import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color bg = Color(0xFF050505);
  static const Color card = Color(0xFF121212);
  static const Color neon = Color(0xFF12F7A0);
  static const Color border = Color(0xFF1D2C28);
  static const Color blueButton = Color(0xFF1B2D4C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0A1713),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: const Color(0xFF17483B)),
                    ),
                    child: const Icon(
                      Icons.memory,
                      color: neon,
                      size: 26,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "BOTAPP ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          TextSpan(
                            text: "PRO",
                            style: TextStyle(
                              color: neon,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text: "\nNEURAL ENGINE V4.2",
                            style: TextStyle(
                              color: neon,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _topIconButton(Icons.search, hasDot: false),
                  const SizedBox(width: 10),
                  _topIconButton(Icons.notifications_none, hasDot: true),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: _statCard(
                      title: "TOTALPORTFOLIO",
                      value: "\$142,850.32",
                      subtitle: "+12.4% this\nmonth",
                      rightIcon: Icons.account_balance_wallet_outlined,
                      neonValue: false,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(child: _AlphaCard()),
                ],
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: card,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFF0E7657)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x220EF7A0),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _Badge(text: "HIGH VOLATILITY ALERT", isNeon: true),
                    SizedBox(height: 14),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SOL/USDT Perpetual Focus",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                "Surgical entry window detected by Neural-V4",
                                style: TextStyle(
                                  color: Color(0xFFA6ADB8),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "98.2%",
                              style: TextStyle(
                                color: Color(0xFF12F7A0),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "CONFIDENCE",
                              style: TextStyle(
                                color: Color(0xFF6D7785),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              const Row(
                children: [
                  CircleAvatar(radius: 4, backgroundColor: neon),
                  SizedBox(width: 10),
                  Text(
                    "REAL-TIME SIGNALS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2.2,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              _signalCard(
                imageWidget: _miniImageBox(
                  icon: Icons.grid_4x4,
                  bg1: const Color(0xFF08231B),
                  bg2: const Color(0xFF041410),
                ),
                title: "Neural-Arbitrage V3",
                subtitle: "Frequency: 142 tx/hr | Liquidity: High",
                badge: "SCALPING",
                progress: 0.78,
                confidence: "94.8% CONFIDENCE",
                buttonText: "DEPLOY INSTANTLY",
                buttonColor: neon,
                buttonTextColor: Colors.black,
                trailingIcon: Icons.bar_chart,
              ),

              const SizedBox(height: 14),

              _signalCard(
                imageWidget: _miniImageBox(
                  icon: Icons.android,
                  bg1: const Color(0xFF294039),
                  bg2: const Color(0xFF0A1613),
                ),
                title: "Neon-Trend Follower",
                subtitle: "Stability: Ultra-High | Assets: BTC, ETH",
                badge: "SWING",
                progress: 0.58,
                confidence: "82.1% CONFIDENCE",
                buttonText: "ANALYZE DATA",
                buttonColor: blueButton,
                buttonTextColor: Colors.white,
                trailingIcon: Icons.favorite_border,
              ),

              const SizedBox(height: 30),

              const Text(
                "NEURAL LIVE FEED",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2.2,
                ),
              ),

              const SizedBox(height: 18),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: card,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: border),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 230,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(22),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF071A16),
                            Color(0xFF142D29),
                            Color(0xFF081210),
                          ],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: CustomPaint(
                              painter: _ChartPainter(),
                            ),
                          ),
                          const Positioned(
                            left: 18,
                            top: 18,
                            child: _Badge(
                              text: "ACTIVE STREAM",
                              isNeon: true,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "LIVE MOMENTUM",
                            style: TextStyle(
                              color: neon,
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.3,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "ETH Liquidity Surge v4.0",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 18),
                          Row(
                            children: [
                              Expanded(
                                child: _smallMetricCard(
                                  title: "ENTRY PRICE",
                                  value: "\$2,412.05",
                                  isNeonValue: false,
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: _smallMetricCard(
                                  title: "CURRENT PNL",
                                  value: "+\$814.20",
                                  isNeonValue: true,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            height: 58,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: neon,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: const Text(
                                "OPEN CONTROL CENTER",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.8,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topIconButton(IconData icon, {required bool hasDot}) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: const Color(0xFF141414),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF202020)),
      ),
      child: Stack(
        children: [
          Center(
            child: Icon(icon, color: Colors.white, size: 24),
          ),
          if (hasDot)
            const Positioned(
              right: 10,
              top: 10,
              child: CircleAvatar(
                radius: 4,
                backgroundColor: neon,
              ),
            ),
        ],
      ),
    );
  }

  Widget _statCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData rightIcon,
    required bool neonValue,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 180,
      decoration: BoxDecoration(
        color: card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFF202020)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFFAAB3BF),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
              Icon(rightIcon, color: neon, size: 18),
            ],
          ),
          const Spacer(),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: TextStyle(
              color: neonValue ? neon : Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            subtitle,
            style: const TextStyle(
              color: Color(0xFFAAB3BF),
              fontSize: 14,
              height: 1.35,
            ),
          ),
        ],
      ),
    );
  }

  Widget _signalCard({
    required Widget imageWidget,
    required String title,
    required String subtitle,
    required String badge,
    required double progress,
    required String confidence,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
    required IconData trailingIcon,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFF202020)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageWidget,
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          _smallBadge(badge),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: Color(0xFFAAB3BF),
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              child: LinearProgressIndicator(
                                value: progress,
                                minHeight: 6,
                                backgroundColor: const Color(0xFF1C2C46),
                                valueColor:
                                    const AlwaysStoppedAnimation(neon),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            confidence,
                            style: const TextStyle(
                              color: neon,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
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
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF1A1A1A),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(18),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                          foregroundColor: buttonTextColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          buttonText,
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    trailingIcon,
                    color: const Color(0xFF98A4B5),
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _miniImageBox({
    required IconData icon,
    required Color bg1,
    required Color bg2,
  }) {
    return Container(
      width: 74,
      height: 74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [bg1, bg2],
        ),
      ),
      child: Icon(icon, color: neon, size: 32),
    );
  }

  static Widget _smallBadge(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF0E1722),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF20476D)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF6EB8FF),
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _smallMetricCard({
    required String title,
    required String value,
    required bool isNeonValue,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFAAB3BF),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(
              color: isNeonValue ? neon : Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _AlphaCard extends StatelessWidget {
  const _AlphaCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 180,
      decoration: BoxDecoration(
        color: const Color(0xFF121212),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFF202020)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "24H ALPHA",
                  style: TextStyle(
                    color: Color(0xFFAAB3BF),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
              Icon(Icons.bolt, color: Color(0xFF12F7A0), size: 18),
            ],
          ),
          Spacer(),
          Text(
            "+\$4,240.15",
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: TextStyle(
              color: Color(0xFF12F7A0),
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 18),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: LinearProgressIndicator(
              value: 0.78,
              minHeight: 6,
              backgroundColor: Color(0xFF1C2C46),
              valueColor: AlwaysStoppedAnimation(Color(0xFF12F7A0)),
            ),
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;
  final bool isNeon;

  const _Badge({
    required this.text,
    required this.isNeon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF09241D),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: isNeon ? const Color(0xFF0E7C5B) : const Color(0xFF1D2C28),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isNeon ? const Color(0xFF12F7A0) : Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _ChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final grid = Paint()
      ..color = const Color(0x2212F7A0)
      ..strokeWidth = 1;

    for (double x = 0; x <= size.width; x += 28) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), grid);
    }
    for (double y = 0; y <= size.height; y += 26) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), grid);
    }

    final chartPaint = Paint()
      ..color = const Color(0xFF79FFE0)
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);

    final chartPaint2 = Paint()
      ..color = const Color(0xFFEF5A5A)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);

    final path1 = Path()
      ..moveTo(0, size.height * 0.72)
      ..lineTo(size.width * 0.08, size.height * 0.66)
      ..lineTo(size.width * 0.16, size.height * 0.62)
      ..lineTo(size.width * 0.24, size.height * 0.54)
      ..lineTo(size.width * 0.32, size.height * 0.50)
      ..lineTo(size.width * 0.40, size.height * 0.44)
      ..lineTo(size.width * 0.48, size.height * 0.48)
      ..lineTo(size.width * 0.56, size.height * 0.35)
      ..lineTo(size.width * 0.64, size.height * 0.28)
      ..lineTo(size.width * 0.72, size.height * 0.32)
      ..lineTo(size.width * 0.80, size.height * 0.20)
      ..lineTo(size.width * 0.88, size.height * 0.16)
      ..lineTo(size.width, size.height * 0.10);

    final path2 = Path()
      ..moveTo(0, size.height * 0.60)
      ..lineTo(size.width * 0.10, size.height * 0.57)
      ..lineTo(size.width * 0.18, size.height * 0.64)
      ..lineTo(size.width * 0.26, size.height * 0.52)
      ..lineTo(size.width * 0.34, size.height * 0.55)
      ..lineTo(size.width * 0.44, size.height * 0.48)
      ..lineTo(size.width * 0.56, size.height * 0.50)
      ..lineTo(size.width * 0.70, size.height * 0.41)
      ..lineTo(size.width * 0.82, size.height * 0.38)
      ..lineTo(size.width, size.height * 0.34);

    canvas.drawPath(path1, chartPaint);
    canvas.drawPath(path2, chartPaint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}