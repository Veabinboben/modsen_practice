import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:modsen_practice/domain/repository/abstract_local_crypto_repo.dart';
import 'package:modsen_practice/domain/repository/abstract_remote_crypto_repo.dart';
import 'package:modsen_practice/presentation/blocs/crypto_chart_cubit.dart';
import 'package:modsen_practice/presentation/widgets/currency_chart.dart';

import '../../consts.dart';
import '../../domain/models/coin_model.dart';
import '../../main.dart';
import '../widgets/coin_data.dart';

class CryptoChartPage extends StatelessWidget {
  CryptoChartPage({required this.coin,super.key});

  ValueNotifier<int> selected = ValueNotifier<int>(1);
  ValueNotifier<bool?> favourited = ValueNotifier<bool?>(null);
  final Coin coin;
  final formatter = NumberFormat.decimalPattern('vi_VN');
  final formatterTime = DateFormat('kk:mm');
  final getIt = GetIt.instance;

  late final CryptoChartCubit _cubit = CryptoChartCubit(
      getIt.get<AbstractRemoteCryptoRepo>(),
      getIt.get<AbstractLocalCryptoRepo>(),
  );

  Future<void> _setFav() async{
    favourited.value = await _cubit.isFavourite(coin);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          context.pop();
        }, icon: const Icon(Icons.arrow_back)),
        title:  Container(
            child: RichText(
                text: TextSpan(
                  text: "${coin.name}",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  children: [
                    TextSpan(
                      text: " (${coin.symbol!.toUpperCase()})",
                      style: TextStyle(fontWeight: FontWeight.normal, color: Colors.blueGrey)
                    )
                  ]
                )
            )
        ),
        actions: [
          ValueListenableBuilder(valueListenable: favourited, builder: (context, value,_){
            if (value != null){
              return IconButton(
                icon: Icon(value == true ? Icons.star : Icons.star_border_purple500_outlined),
                onPressed: (){
                  if (value == true){
                    _cubit.removeFromFavourite(coin);
                    _setFav();
                  }
                  else{
                    _cubit.addToFavourite(coin);
                    _setFav();
                  }
                },
              );
            }
            else{
              _setFav();
              return SizedBox(width: 0,);
            }
          })
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Builder(
          builder: (context) {
            return Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height-Scaffold.of(context).appBarMaxHeight!-110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "\$${(coin.currentPrice ?? 0).toStringAsFixed(2)}\n",
                            style: TextStyle(fontSize: 30),
                            children: [TextSpan(
                                text: "${(coin.priceChange24h ?? 0) >= 0 ? '+' : '-'}\$${(coin.priceChange24h ?? 0).abs().toStringAsFixed(2)}",
                                style: TextStyle(color: (coin.priceChange24h ?? 0) <= 0? Colors.red : Colors.lightGreen, fontSize: 15)
                            )],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: CachedNetworkImage(imageUrl: coin.image!, width: 40),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.black87,
                    height: 300,
                    child: BlocBuilder(
                        bloc: _cubit..getChartData(coin.id!),
                        builder: (context, state){
                          switch (state){
                            case GotChartDataState(): {
                              logger.i(state.data.length);
                              return CryptoChart(state.data);
                            }
                            case WaitingChartDataState():
                              return Center(child: CircularProgressIndicator(),);
                            default:
                              return Center(child: Text("No data"));
                          }
                        }
                    ),
                  ),
                  BlocBuilder(
                    bloc: _cubit,
                    builder: (contex,state) {
                      bool enabled = false;
                      if (state is GotChartDataState){
                        enabled = !state.offline;
                      }
                      return ValueListenableBuilder(
                        valueListenable: selected,
                        builder: (context,value,_){
                          return Center(
                            child: ToggleButtons(
                              borderRadius: BorderRadius.circular(30),
                              selectedColor: Colors.white,
                              fillColor: const Color(0xFF007AFF), // Blue pill
                              color: Colors.white70,
                              borderColor: Colors.transparent,
                              selectedBorderColor: Colors.transparent,
                              borderWidth: 0,
                              constraints:  BoxConstraints(minHeight: 40,
                                  minWidth: MediaQuery.of(context).size.width / 7),
                              children: [
                                Text("1H"),
                                Text("1D"),
                                Text("1W"),
                                Text("1M"),
                                Text("6M"),
                                Text("1Y"),
                              ],
                              isSelected: enabled == true ?
                              List.generate(6, (index) => index == selected.value):
                              List.generate(6, (index) => false),
                              onPressed: (index){
                                if (enabled == false) return;
                                selected.value = index;
                                logger.i(chartintervals[index]);
                                _cubit.getChartData(coin.id!,days: chartintervals[index]);
                              },
                            ),
                          );
                        }
                      );
                    },
                  ),
                  Expanded(
                    child: Container(
                       //color: Colors.red,
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        reverse: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        childAspectRatio: 2,
                        children: [

                          CoinData(name: "Low",value: "\$${formatter.format(coin.low24h)} ",),
                          CoinData(name: "High",value: "\$${formatter.format(coin.high24h)} ",),
                          CoinData(name: "Market Cap",value: "${formatter.format(coin.marketCap)} ${coin.symbol.toString().toUpperCase()}",),
                          CoinData(name: "Volume",value: "\$${formatter.format(coin.totalVolume)}",),
                          CoinData(name: "Avaliable Supply",value: "${formatter.format(coin.circulatingSupply)}",),
                          CoinData(name: "Total Supply",value: "${formatter.format(coin.totalSupply)}",),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
