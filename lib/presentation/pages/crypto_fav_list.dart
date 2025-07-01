import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:modsen_practice/presentation/blocs/crypto_fav_cubit.dart';

import '../../domain/repository/abstract_local_crypto_repo.dart';
import '../widgets/crypto_list_tile.dart';
import '../widgets/loading_overlay.dart';

class CryptoFavList extends StatelessWidget {
  CryptoFavList({super.key});

  final getIt = GetIt.instance;
  late final cubit = CryptoFavCubit(
      getIt.get<AbstractLocalCryptoRepo>()
  );


  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        bloc: cubit..getFavList(),
        listener: (context,state){
          if (state is WaitingFavListState) {
            LoadingOverlay.show(context);
          } else {
            LoadingOverlay.hide();
          }
        },
        builder: (context,state){
          switch (state){
            case GotFavListState():
              return Container(
                child: ListView.builder(
                  itemCount: state.coins.length,
                  itemBuilder: (context, index) {
                    final item = state.coins[index];
                    return CryptoListTile(item);
                  },
                ),
              );
            case EmptyFavListState():
              return Center(child: Text("No data"),);
            case WaitingFavListState():
            default:
              return Container();
          }
    });
  }
}

