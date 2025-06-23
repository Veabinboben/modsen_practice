
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:modsen_practice/domain/repository/abstract_crypto_repo.dart';
import 'package:modsen_practice/presentation/blocs/crypto_list_cubit.dart';
import 'package:modsen_practice/presentation/widgets/crypto_list_tile.dart';

import '../widgets/loading_overlay.dart';

class CryptoListPage extends StatelessWidget {
  CryptoListPage({super.key}){
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _appendList();
      }
    });
  }
  final getIt = GetIt.instance;
  late final cubit = CryptoListCubit(
    getIt.get<AbstractCryptoRepo>()
  );
  final ScrollController _scrollController = ScrollController();

  void _appendList(){
    cubit.appendCoins();
  }

  Future<void>  _refreshList() async {
    cubit.getCoins();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshList,
      child: BlocConsumer(
        bloc: cubit..getCoins(),
        listener: (context,state){
          if (state is WaitingListState) {
            LoadingOverlay.show(context);
          } else {
            LoadingOverlay.hide();
          }
        },
        builder: (context, state) {
          switch (state){
            case GotListState():
              return Container(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: state.coins.length+1,
                  itemBuilder: (context, index) {
                    if(index == state.coins.length){
                      return CircularProgressIndicator();
                    }
                    final item = state.coins[index];
                    return CryptoListTile(item);
                  },
                ),
              );
            case EmptyListState():
              return SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: const Center(
                    child:
                    Text("No data"),
                  ),
                ),
              );
            default:
              return Container();
          }
        },
      ),
    );
  }
}
