// ignore_for_file: unnecessary_underscores

import 'package:flutter/material.dart';

class BotsScreen extends StatefulWidget {
  const BotsScreen({super.key});

  @override
  State<BotsScreen> createState() => _BotsScreenState();
}

class _BotsScreenState extends State<BotsScreen> {
  final TextEditingController promptController = TextEditingController();

  int selectedTab = 0;

  final List<String> tabs = [
    "HYPER-DRIVE",
    "CREATIVE CORE",
    "LOGIC GRID",
  ];

  @override
  void dispose() {
    promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const bg = Color(0xFF020A08);
    const neon = Color(0xFF12F7A0);
    // ignore: unused_local_variable
    const softText = Color(0xFF98A2AF);
    const border = Color(0xFF123A31);
    const blueBorder = Color(0xFF243A5A);
    const darkCard = Color(0xFF08110F);
    const inputBg = Color(0xFF081020);

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top header
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF0D3A2D),
                            width: 1,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_back,
                            color: neon,
                            size: 34,
                          ),
                          const SizedBox(width: 18),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Aura Architect",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: neon,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "NEURAL SYNC ACTIVE",
                                      style: TextStyle(
                                        color: neon,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1.8,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Color(0xFF8A95A5),
                            size: 30,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 18),

                    // Top tabs
                    SizedBox(
                      height: 60,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        itemCount: tabs.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 14),
                        itemBuilder: (context, index) {
                          final selected = selectedTab == index;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTab = index;
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 26),
                              decoration: BoxDecoration(
                                color: selected
                                    ? const Color(0xFF072417)
                                    : const Color(0xFF111827),
                                borderRadius: BorderRadius.circular(22),
                                border: Border.all(
                                  color: selected ? border : blueBorder,
                                  width: 1.4,
                                ),
                                boxShadow: selected
                                    ? const [
                                        BoxShadow(
                                          color: Color(0x3312F7A0),
                                          blurRadius: 18,
                                        ),
                                      ]
                                    : null,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    index == 0
                                        ? Icons.bolt
                                        : index == 1
                                            ? Icons.psychology_alt_outlined
                                            : Icons.grid_view_rounded,
                                    color:
                                        selected ? neon : const Color(0xFF98A2AF),
                                    size: 22,
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    tabs[index],
                                    style: TextStyle(
                                      color: selected
                                          ? neon
                                          : const Color(0xFF98A2AF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 26),

                    // session initialized
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xFF0E2D24),
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child: Text(
                              "SESSION INITIALIZED",
                              style: TextStyle(
                                color: neon,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 3.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFF0E2D24),
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 28),

                    // AI message block
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: const Color(0xFF0D6E58)),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xFF213B36),
                                  Color(0xFF07110F),
                                ],
                              ),
                            ),
                            child: const Icon(
                              Icons.face_retouching_natural,
                              color: neon,
                              size: 28,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(22),
                                  decoration: BoxDecoration(
                                    color: darkCard,
                                    borderRadius: BorderRadius.circular(24),
                                    border: Border.all(
                                      color: const Color(0xFF1D3550),
                                    ),
                                  ),
                                  child: const Text(
                                    "Neural link established. I am ready to manifest your vision. What core personality parameters shall we define for your new entity?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      height: 1.6,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Padding(
                                  padding: EdgeInsets.only(left: 6),
                                  child: Text(
                                    "AURA AI • 09:41 AM",
                                    style: TextStyle(
                                      color: Color(0xFF6E7C90),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 28),

                    // user message block
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          const Spacer(),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(22),
                                  decoration: BoxDecoration(
                                    color: neon,
                                    borderRadius: BorderRadius.circular(26),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x5512F7A0),
                                        blurRadius: 24,
                                      ),
                                    ],
                                  ),
                                  child: const Text(
                                    "I want a bot that sounds like a sarcastic futuristic navigator. High technical knowledge but low patience for human errors.",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500,
                                      height: 1.6,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "USER • JUST NOW",
                                  style: TextStyle(
                                    color: Color(0xFF6E7C90),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 32),

                    // typing row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: const Color(0xFF0D6E58)),
                              color: const Color(0xFF06110F),
                            ),
                            child: const Icon(
                              Icons.auto_awesome,
                              color: neon,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 18),
                          const TypingDots(),
                        ],
                      ),
                    ),

                    const SizedBox(height: 110),
                  ],
                ),
              ),
            ),

            // input area
            Container(
              padding: const EdgeInsets.fromLTRB(16, 18, 16, 16),
              decoration: const BoxDecoration(
                color: Color(0xFF050B0A),
                border: Border(
                  top: BorderSide(color: Color(0xFF0E2D24), width: 1),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 84,
                      decoration: BoxDecoration(
                        color: inputBg,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: const Color(0xFF29405F)),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 18),
                          Expanded(
                            child: TextField(
                              controller: promptController,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              decoration: const InputDecoration(
                                hintText: "Design your prompt...",
                                hintStyle: TextStyle(
                                  color: Color(0xFF64748B),
                                  fontSize: 18,
                                ),
                                border: InputBorder.none,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const Icon(
                            Icons.attach_file,
                            color: Color(0xFF96A0B3),
                            size: 30,
                          ),
                          const SizedBox(width: 18),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Container(
                    width: 84,
                    height: 84,
                    decoration: BoxDecoration(
                      color: neon,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x5512F7A0),
                          blurRadius: 24,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.send_rounded,
                      color: Colors.black,
                      size: 38,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TypingDots extends StatefulWidget {
  const TypingDots({super.key});

  @override
  State<TypingDots> createState() => _TypingDotsState();
}

class _TypingDotsState extends State<TypingDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _dot(double delay) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = (_controller.value - delay).clamp(0.0, 1.0);
        final opacity = (value <= 0.5)
            ? (0.4 + value)
            : (1.4 - value).clamp(0.4, 1.0);
        return Opacity(
          opacity: opacity,
          child: child,
        );
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: CircleAvatar(
          radius: 6,
          backgroundColor: Color(0xFF12F7A0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _dot(0.0),
        _dot(0.2),
        _dot(0.4),
      ],
    );
  }
}