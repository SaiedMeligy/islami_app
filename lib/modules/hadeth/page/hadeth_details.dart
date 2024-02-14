import 'package:flutter/material.dart';
import 'package:islamii_app/config/settings_provider.dart';
import 'package:islamii_app/modules/hadeth/page/hadeth_view.dart';
import 'package:provider/provider.dart';

class HadethDetailsView extends StatelessWidget {
  const HadethDetailsView({super.key});

  static const route_name = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as HadethData;
    var vm = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(vm.getBackground()), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إسلامي'),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 15,
            bottom: 80,
          ),
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 15,
            bottom: 15,
          ),
          decoration: BoxDecoration(
              color: vm.current_theme == ThemeMode.dark
                  ? Color(0XFF141A2E).withOpacity(0.8)
                  : Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Text(args.hadeth_title, style: theme.textTheme.bodyMedium),
              const Divider(
                thickness: 1.2,
              ),
              Expanded(
                child: Text(
                  args.hadeth_content,
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
