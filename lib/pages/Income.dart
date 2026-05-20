import 'package:flutter/material.dart';
import 'package:personalfinance/pages/Loans.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController _amount = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _reason = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F8F3),

      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,

          child: SingleChildScrollView(
            child: Column(
              children: [

                /// TOP GREEN AREA
                Container(
                  height: 290,
                  width: double.infinity,

                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffA5D66D),
                        Color(0xff37B87A),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),

                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                  ),

                  child: Stack(
                    alignment: Alignment.center,

                    children: [

                      /// BIG CIRCLE
                      Positioned(
                        top: 45,

                        child: Container(
                          height: 200,
                          width: 200,

                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(0.4),
                              width: 3,
                            ),
                          ),
                        ),
                      ),

                      /// IMAGE CIRCLE
                      Positioned(
                        top: 55,

                        child: Container(
                          height: 180,
                          width: 180,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,

                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(28),

                            child: ClipOval(
                              child: Image.asset(
                                "assets/images/money.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// FORM CARD
                Transform.translate(
                  offset: const Offset(0, -40),

                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 22),

                    padding: const EdgeInsets.all(24),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),

                    child: Form(
                      key: _key,

                      child: Column(
                        children: [

                          /// TITLE
                          const Text(
                            "ثبت درآمد",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff145A32),
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            "درآمد خود را به آسانی مدیریت کنید",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),

                          const SizedBox(height: 35),

                          /// AMOUNT FIELD
                          TextFormField(
                            controller: _amount,

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "لطفاً مقدار را وارد کنید";
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              hintText: "مقدار درآمد",

                              filled: true,
                              fillColor: const Color(0xffF5F7F5),

                              prefixIcon: Container(
                                margin: const EdgeInsets.all(8),

                                decoration: const BoxDecoration(
                                  color: Color(0xffEAF5E8),
                                  shape: BoxShape.circle,
                                ),

                                child: const Icon(
                                  Icons.attach_money,
                                  color: Colors.green,
                                ),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),

                          const SizedBox(height: 22),

                          /// DATE FIELD
                          TextFormField(
                            controller: _date,

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "لطفاً تاریخ را وارد کنید";
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              hintText: "تاریخ درآمد",

                              filled: true,
                              fillColor: const Color(0xffF5F7F5),

                              prefixIcon: Container(
                                margin: const EdgeInsets.all(8),

                                decoration: const BoxDecoration(
                                  color: Color(0xffEAF5E8),
                                  shape: BoxShape.circle,
                                ),

                                child: const Icon(
                                  Icons.calendar_month,
                                  color: Colors.green,
                                ),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),

                          const SizedBox(height: 22),

                          /// REASON FIELD
                          TextFormField(
                            controller: _reason,
                            maxLines: 3,

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "لطفاً دلیل را وارد کنید";
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              hintText: "دلیل درآمد",

                              filled: true,
                              fillColor: const Color(0xffF5F7F5),

                              prefixIcon: Container(
                                margin: const EdgeInsets.all(8),

                                decoration: const BoxDecoration(
                                  color: Color(0xffEAF5E8),
                                  shape: BoxShape.circle,
                                ),

                                child: const Icon(
                                  Icons.note_alt_outlined,
                                  color: Colors.green,
                                ),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),

                          const SizedBox(height: 35),

                          /// SAVE BUTTON
                          SizedBox(
                            width: double.infinity,
                            height: 60,

                            child: ElevatedButton(
                              onPressed: () {

                                if (_key.currentState!.validate()) {

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("ذخیره شد ✅"),
                                    ),
                                  );

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Loans(),
                                    ),
                                  );
                                }
                              },

                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff49C16D),

                                elevation: 8,

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22),
                                ),
                              ),

                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Text(
                                    "ذخیره",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Icon(
                                    Icons.save_outlined,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}