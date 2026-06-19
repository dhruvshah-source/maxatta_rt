import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'bots_screen.dart';
import 'deploy_screen.dart';
import 'signals_screen.dart';
import 'wallet_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int currentIndex = 0;

  late final List<Widget> pages = const [
    HomeScreen(),
    BotsScreen(),
    DeployScreen(),
    SignalsScreen(),
    WalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    const Color bg = Color(0xFF050505);
    const Color neon = Color(0xFF12F7A0);

    return Scaffold(
      backgroundColor: bg,
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Container(
        height: 92,
        decoration: const BoxDecoration(
          color: Color(0xFF0A0A0A),
          border: Border(
            top: BorderSide(color: Color(0xFF1A1A1A)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomItem(
              icon: Icons.home,
              label: "HOME",
              selected: currentIndex == 0,
              onTap: () => setState(() => currentIndex = 0),
            ),
            _bottomItem(
              icon: Icons.smart_toy_outlined,
              label: "BOTS",
              selected: currentIndex == 1,
              onTap: () => setState(() => currentIndex = 1),
            ),
            GestureDetector(
              onTap: () => setState(() => currentIndex = 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: neon,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x6612F7A0),
                          blurRadius: 16,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 34,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "DEPLOY",
                    style: TextStyle(
                      color: currentIndex == 2 ? neon : const Color(0xFFA6ADB8),
                      fontSize: 11,
                      fontWeight:
                          currentIndex == 2 ? FontWeight.w700 : FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            _bottomItem(
              icon: Icons.show_chart,
              label: "SIGNALS",
              selected: currentIndex == 3,
              onTap: () => setState(() => currentIndex = 3),
            ),
            _bottomItem(
              icon: Icons.account_balance_wallet_outlined,
              label: "WALLET",
              selected: currentIndex == 4,
              onTap: () => setState(() => currentIndex = 4),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomItem({
    required IconData icon,
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    const Color neon = Color(0xFF12F7A0);

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: selected ? neon : const Color(0xFFA6ADB8),
            size: 28,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: selected ? neon : const Color(0xFFA6ADB8),
              fontSize: 11,
              fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}