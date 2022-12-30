import 'package:flutter/material.dart';

class ItemCardapioList extends StatefulWidget {
  const ItemCardapioList({Key? key}) : super(key: key);

  @override
  State<ItemCardapioList> createState() => _ItemCardapioListState();
}

class _ItemCardapioListState extends State<ItemCardapioList> {

  int count = 0;

  @override
  Widget build(BuildContext context) {

    void increment(){
      setState(() {
        count++;
      });
    }

    void decrement(){
      setState(() {
        count--;
      });
    }
    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/img/carne.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            const Text(
                                'Tiras de bife com batatas '
                                'fritas e salada de repolho',
                                style: TextStyle(
                                  color: Color(0xff800808),
                                ),
                                textAlign: TextAlign.center),
                            const Divider(thickness: 2),
                            SizedBox(
                                child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(0xffEBD3D3))),
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: count <= 0 ? null : decrement,
                                            icon:  Icon(
                                              Icons.remove_circle,
                                              color: count <= 0 ? const Color(0xffB77D7A): const Color(0xffFF3D00),
                                            ),
                                            iconSize: 30),
                                         SizedBox(
                                          width: 50,
                                          child: Center(
                                            child: Text(
                                              count.toString(),
                                              style: const TextStyle(
                                                color: Color(0xff800808),
                                                fontSize: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: increment,
                                            icon: const Icon(
                                              Icons.add_circle,
                                              color: Color(0xffFF3D00),
                                            ),
                                            iconSize: 30),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
