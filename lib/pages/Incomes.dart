import 'package:flutter/material.dart';
import 'package:personalfinance/pages/EditIncome.dart';
import 'package:personalfinance/pages/Income.dart';

class Incomes extends StatefulWidget {
  const Incomes({super.key});

  @override
  State<Incomes> createState() => _IncomesState();
}

class _IncomesState extends State<Incomes> {
  final List<Map<String, String>> list = [
    {
      "amount": "100",
      "date": "1990-12-10",
      "reason": "Salary",
    },
    {
      "amount": "200",
      "date": "1990-12-11",
      "reason": "Freelance",
    },
    {
      "amount": "500",
      "date": "1990-12-12",
      "reason": "Project",
    },
  ];

  int get totalIncome {
    return list.fold(
      0,
          (sum, item) =>
      sum + (int.tryParse(item["amount"] ?? "0") ?? 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Income()));
        },
        child: const Icon(Icons.add),
      ),

      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Top Card
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 12),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.green,
                        Color(0xff43A047),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "مجموع عواید",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "$totalIncome AF",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // List
                Expanded(
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final item = list[index];

                      return InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>EditIncome()));
                        },
                        child: Container(
                          margin:
                          const EdgeInsets.symmetric(
                              vertical: 8),
                          padding:
                          const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset:
                                const Offset(0, 4),
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding:
                                const EdgeInsets
                                    .all(12),
                                decoration:
                                BoxDecoration(
                                  color: Colors
                                      .green.shade100,
                                  shape:
                                  BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons
                                      .monetization_on,
                                  color:
                                  Colors.green,
                                ),
                              ),

                              const SizedBox(
                                  width: 12),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    Text(
                                      item["reason"] ??
                                          "",
                                      style:
                                      const TextStyle(
                                        fontSize: 18,
                                        fontWeight:
                                        FontWeight
                                            .bold,
                                      ),
                                    ),
                                    const SizedBox(
                                        height: 4),
                                    Text(
                                      item["date"] ??
                                          "",
                                      style:
                                      TextStyle(
                                        color: Colors
                                            .grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Text(
                                "+ ${item["amount"] ?? "0"} AF",
                                style:
                                const TextStyle(
                                  color:
                                  Colors.green,
                                  fontSize: 18,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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