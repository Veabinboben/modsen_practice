import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modsen_practice/data/repository/crypto_repo.dart';
import 'package:modsen_practice/presentation/blocs/crypto_list_cubit.dart';

import '../../data/sources/remote_crypto.dart';

class CryptoListPage extends StatelessWidget {
  CryptoListPage({super.key});

  final cubit = CryptoListCubit(CryptoRepo (RemoteCryptoSource(Dio()),"CG-57JzrCrL5DJBo2cJV6cA5K94") );

  @override
  Widget build(BuildContext context) {



    return BlocBuilder(
        bloc: cubit ,
        builder: (context,state){
        return Container(
          height: 400,
          child: Column(
            children: [
              ElevatedButton(onPressed: (){cubit.getCoins();}, child: Text("ping")),
              if (state is GotListState) Container(
                height: 300,
                child: ListView.builder(
                    itemCount: state.coins.length,
                    itemBuilder: (context,index){
                      final item = state.coins[index];
                    return Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(30),
                          child: CachedNetworkImage(imageUrl: item.image!, width: 20,),
                        ),
                        title: Text(item.name ?? "Noname"),
                      ),
                    );
                }),
              ),


            ],
          ),
        );
    });
  }
}
