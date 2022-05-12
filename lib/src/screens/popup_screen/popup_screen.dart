import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turista/src/screens/popup_screen/cargo_row.dart';
import 'package:turista/src/screens/popup_screen/custom_caracteristicas.dart';
import 'package:turista/src/utils/my_colors.dart';
import 'package:turista/src/utils/my_images.dart';

import 'custom_algun.dart';

class PopupScreen extends StatefulWidget {
  const PopupScreen({Key? key}) : super(key: key);

  @override
  _PopupScreenState createState() => _PopupScreenState();
}

class _PopupScreenState extends State<PopupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    const Icon(Icons.bus_alert, size: 40),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '10 abril - 5 mayo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Manzanillo - Dalas',
                          style: TextStyle(color: MyColors.grey, fontSize: 10),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          '31 dias trasito | 18 almanceanje',
                          style: TextStyle(color: MyColors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'USD\$7,000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Embarque Complete',
                          style: TextStyle(color: MyColors.grey, fontSize: 10),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          '2 contenedores',
                          style: TextStyle(color: MyColors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cargos',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Selectciona todos los servicos de tus necesidades',
                      style: TextStyle(color: MyColors.grey, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const CargoRow(),
                    const CargoRow(),
                    const CargoRow(),
                    const CargoRow(),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Caracteristicas',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Selectciona todos los servicos de tus necesidades',
                      style: TextStyle(color: MyColors.grey, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CustomCaracteristicas(
                                text: 'TIPO DE CAMION',
                              ),
                              CustomCaracteristicas(
                                text: 'PESO TOTAL',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CustomCaracteristicas(
                                text: 'Commodity',
                              ),
                              CustomCaracteristicas(
                                text: 'IMPO/Expo',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Si estimable',
                                        style: TextStyle(color: MyColors.grey),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  offset: const Offset(2, 2),
                                                  spreadRadius: 2,
                                                  blurRadius: 6)
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Si estimable',
                                        style: TextStyle(color: MyColors.grey),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                            color: Colors.indigo,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  offset: const Offset(2, 2),
                                                  spreadRadius: 2,
                                                  blurRadius: 6)
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Algun servicio adicional',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Selectciona todos los servicos de tus necesidades',
                      style: TextStyle(color: MyColors.grey, fontSize: 10),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: const [
                          Divider(
                            thickness: 1.5,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomAlgun(),
                          CustomAlgun(),
                          CustomAlgun(),
                          CustomAlgun(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: MyColors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Comentar ios',style: TextStyle(color: MyColors.grey),),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Spacer(),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)
                                  )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text('Subir document',style: TextStyle(color: Colors.white,fontSize: 10),),
                                    Icon(Icons.cloud_upload_outlined,size: 20,)
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigo
                ),
                child: const Center(child: Text('Request',style: TextStyle(color: Colors.white),)),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
