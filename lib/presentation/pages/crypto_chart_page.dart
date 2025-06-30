import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:modsen_practice/domain/repository/abstract_local_crypto_repo.dart';
import 'package:modsen_practice/domain/repository/abstract_remote_crypto_repo.dart';
import 'package:modsen_practice/presentation/blocs/crypto_chart_cubit.dart';
import 'package:modsen_practice/presentation/widgets/currency_chart.dart';

import '../../domain/models/coin_model.dart';
import '../../main.dart';
import '../widgets/coin_data.dart';

class CryptoChartPage extends StatelessWidget {
  CryptoChartPage({required this.coin,super.key});

  final Coin coin;
  final getIt = GetIt.instance;
  late final CryptoChartCubit _cubit = CryptoChartCubit(
      getIt.get<AbstractRemoteCryptoRepo>(),
      getIt.get<AbstractLocalCryptoRepo>(),
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          context.pop();
        }, icon: const Icon(Icons.arrow_back)),
        title:  Container(
            child: Text(coin.name.toString())
        ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(coin.currentPrice.toString(), style: TextStyle(fontSize: 30),),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: CachedNetworkImage(imageUrl: coin.image!, width: 40),
                      )
                    ],
                  ),
                  Container(
                    color: Colors.black87,
                    height: 300,
                    child: BlocBuilder(
                        bloc: _cubit..getChartData(coin.id!),
                        builder: (context, state){
                          if (state is GotChartDataState){
                            logger.i(state.data);
                            return CryptoChart(state.data);
                          }
                          else{
                            return Center(child: CircularProgressIndicator(),);
                          }
                        }
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black87,
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        reverse: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        childAspectRatio: 2,
                        children: [

                          CoinData(name: "Low",value: coin.low24h.toString(),),
                          CoinData(name: "High",value: coin.high24h.toString(),),
                          CoinData(name: "Market Cap",value: coin.marketCap.toString(),),
                          CoinData(name: "Volume",value: coin.totalVolume.toString(),),
                          CoinData(name: "Avaliable Supply",value: coin.circulatingSupply.toString(),),
                          CoinData(name: "Total Supply",value: coin.totalVolume.toString(),),
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
