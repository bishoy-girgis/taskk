import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/craftsman/createprofile/createprofilecraftsman.dart';
import '../../../shared/components/defaultButtom.dart';
import '../../../shared/components/loading.dart';
import '../../../shared/constants/constants.dart';


class SelectCateg extends StatefulWidget {
  const SelectCateg({super.key});

  @override
  State<SelectCateg> createState() => _SelectCategState();
}

class _SelectCategState extends State<SelectCateg> {
  final arealist =['cairo','giza','alex','aswan'];
  final categlist =['cleaning','plumbing','cooking','nursing'];
  var area;
  var category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            const Image(
              image: AssetImage('images/register.jpg'),
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Column(
                    children: [
                      const Text(
                        'Complete Profile',
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Tell us more about you',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              1,
                                  (index) => const BuildDot1(Dotcolor: Colors.green, Ispage: true, text: '1'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                                  (index) => const BuildDot(Dotcolor: Colors.grey),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              1,
                                  (index) => const BuildDot1(Dotcolor:Colors.grey, Ispage: false, text: '2'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                                  (index) =>const BuildDot(Dotcolor: Colors.grey),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              1,
                                  (index) =>  const BuildDot1(Dotcolor: Colors.grey, Ispage: false, text: '3'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                                  (index) =>const BuildDot(Dotcolor: Colors.grey),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              1,
                                  (index) =>  const BuildDot1(Dotcolor: Colors.grey, Ispage: false, text: '4'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Form(
                            child: Column(
                              children: [
                                const Text(
                                  'Earn Money Your Way',
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                                Container(
                                  width:296.0,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Colors.white,Colors.transparent]
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: DropdownButtonFormField(
                                      value: area,
                                      items: arealist.map(
                                              (e) => DropdownMenuItem(
                                                    value: e,
                                                    child: Text(
                                                        e,
                                                      style: const TextStyle(
                                                        color: primaryColor,
                                                          fontSize: 18.0,
                                                          fontWeight: FontWeight.bold
                                                      ),

                                                    ),
                                                )
                                      ).toList(),
                                      onChanged: (v){
                                        area = v!;
                                        setState(() { });
                                      },
                                    icon: const Icon(
                                      Icons.arrow_drop_down_outlined,
                                      color: primaryColor,
                                    ),
                                    decoration: const InputDecoration(
                                      hintText: 'Select Your Area',
                                      hintStyle: TextStyle(
                                        color: primaryColor,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                      prefixIconColor:primaryColor,
                                      prefixIcon: Icon(
                                        Icons.location_on_outlined,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                Container(
                                  width:296.0,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Colors.white,Colors.transparent]
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: DropdownButtonFormField(
                                    value: category,
                                    items: categlist.map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                          child: Text(
                                            e,
                                            style: const TextStyle(
                                                color: primaryColor,
                                                fontSize: 18.0,
                                              fontWeight: FontWeight.bold
                                            ),

                                          ),
                                        )
                                    ).toList(),
                                    onChanged: (v){
                                      category = v!;
                                      setState(() { });
                                    },
                                    icon: const Icon(
                                      Icons.arrow_drop_down_outlined,
                                      color: primaryColor,
                                    ),
                                    decoration: const InputDecoration(
                                      hintText: 'Choose Category',
                                      hintStyle: TextStyle(
                                          color: primaryColor,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                      prefixIconColor:primaryColor,
                                      prefixIcon: Icon(
                                        Icons.handyman,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 40.0,
                                    ),
                                    const Text(
                                        '\$43',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50.0
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                        'per hour',
                                      style: TextStyle(
                                        color:const Color(0xffD9D9D9).withOpacity(0.6),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      DefaultButtom(
                          onPressed: () {
                        Navigator.push(context,MaterialPageRoute(
                          builder: (_) => const CreateProfileCraftsmanPage(),
                        ),
                        );
                      },
                          text: 'Next'),
                      const SizedBox(
                        height: 70.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
