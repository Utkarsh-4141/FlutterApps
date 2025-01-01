import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() =>_ProfileState();
}
class _ProfileState extends State<Profile>{
  TextEditingController firstName=TextEditingController();
  TextEditingController lastName=TextEditingController();
  TextEditingController location=TextEditingController();
  TextEditingController mobileNumber=TextEditingController();
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading:const Icon(Icons.arrow_back_ios_sharp),
          
          title:Text("Profile",style: GoogleFonts.raleway(fontSize:30,fontWeight:FontWeight.w600),),
          centerTitle: true,
          flexibleSpace: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment:MainAxisAlignment.end,
          children:[
            Text("Done",
            style: GoogleFonts.raleway(fontSize:20,fontWeight:FontWeight.w700),
            ),
          ],
          ),
        ),
        body:Column(
          children:[
            
            Padding(
              padding: const EdgeInsets.only(
                left:105,
                top:20,
                right: 100,
              ),
               child: Container(
              height:90,
              width:95,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color:Colors.black,
              ),
              child: const Icon(Icons.add_a_photo_rounded,color: Colors.white,size: 35,),
                        ),
            ),
            const SizedBox(
              height:15,
            ),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text("Utkarsh Phalphale",
                          style:GoogleFonts.raleway(fontSize:30 ,color:const Color.fromRGBO(43, 43, 43, 1),fontWeight:FontWeight.w600),
                          ),  
                          const SizedBox(height: 10),
                           Text("Change Profile Picture",
                          style:GoogleFonts.raleway(fontSize: 18,color:const Color.fromRGBO(13, 110, 253, 1),fontWeight:FontWeight.w600),),  
                          const SizedBox(height: 10),

           ],
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("First Name",
                          style:GoogleFonts.raleway(fontSize: 18,color:const Color.fromRGBO(43, 43, 43, 1),fontWeight:FontWeight.w600),),  
                          const SizedBox(height: 10),                   
                             TextField(
                              controller:firstName,
                              style: GoogleFonts.poppins(fontSize:20,
                              fontWeight: FontWeight.w400,
                              color:const Color.fromRGBO(43, 43, 43, 1)
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  borderSide: const BorderSide(color:Colors.white),
                                ),
                              ),
                            ),
                           const SizedBox(height:10),
                           Text("Last Name",
                          style:GoogleFonts.raleway(fontSize: 18,color:const Color.fromRGBO(43, 43, 43, 1),fontWeight:FontWeight.w600)),
                          const SizedBox(height: 10),
                            TextField(
                              controller: lastName,
                              style:GoogleFonts.poppins(fontSize:20,
                              fontWeight: FontWeight.w500,
                              color:const Color.fromRGBO(43, 43, 43, 1)
                              ),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  borderSide: const BorderSide(color:Colors.white),
                                ),
                              ),
                            ),
                             const SizedBox(height:10),
                             Text("Location",
                          style:GoogleFonts.raleway(fontSize: 18,color:const Color.fromRGBO(43, 43, 43, 1),fontWeight:FontWeight.w600)),
                          const SizedBox(height:10),
                             TextField(
                              controller: location,
                              style:GoogleFonts.poppins(fontSize:20,
                              fontWeight: FontWeight.w400,
                              color:const Color.fromRGBO(43, 43, 43, 1)
                              ),
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  borderSide: const BorderSide(color:Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text("Mobile Number",
                          style:GoogleFonts.raleway(fontSize: 18,color:const Color.fromRGBO(43, 43, 43, 1),fontWeight:FontWeight.w600)),
                          const SizedBox(height:10),
                             TextField(
                              controller: mobileNumber,
                              style:GoogleFonts.poppins(fontSize:20,
                              fontWeight: FontWeight.w400,
                              color:const Color.fromRGBO(43, 43, 43, 1)
                              ),
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  borderSide: const BorderSide(color:Colors.white),
                                ),
                              ),
                            ),
                            
                  ],
                ),
              ),
            ),
          ]
        ),
        ),
       
    
    );
  }
}