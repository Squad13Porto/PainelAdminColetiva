import 'package:flutter/material.dart';
import 'package:painel_admin_coletiva/common/widgets/custom_app_bar/custom_app_bar_item_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  final PageController pageController;
  final ValueNotifier selectedMenuItem;

  const CustomAppBarWidget({
    Key? key,
    required this.pageController,
    required this.selectedMenuItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItens = [
      "Cursos",
      "Dashboard",
      "Gifs",
      "Meu Perfil",
    ];

    return Row(
      children: [
        const FlutterLogo(size: 150.0),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(72.0),
              ),
            ),
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: menuItens.length,
                itemBuilder: (context, index) {
                  return ValueListenableBuilder(
                    valueListenable: selectedMenuItem,
                    builder: (context, value, child) {
                      // The selected one
                      if (value == index) {
                        return CustomAppBarItemWidget(
                          text: menuItens[index],
                          isSelected: true,
                          onTap: () {
                            selectedMenuItem.value = index;
                            pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                        );
                      }
                      // The unselected ones
                      else {
                        return CustomAppBarItemWidget(
                          text: menuItens[index],
                          isSelected: false,
                          onTap: () {
                            selectedMenuItem.value = index;
                            pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
