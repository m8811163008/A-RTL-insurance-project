import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/MyFiles/my_files.dart';
import 'package:untitled/l10n/l10n.dart';
import 'package:untitled/theme/theme.dart';

class VisitCarBodyPage extends StatelessWidget {
  const VisitCarBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: context.l10n!.enterFileId,
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            suffixIcon: const Icon(Icons.search),
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        Card(
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.topLeft, child: MarkCustomShape()),
              const SizedBox(
                height: 8.0,
              ),
              InfoRow(
                label: context.l10n!.fileID,
                rowData: '0x255a45s4d132',
              ),
              InfoRow(
                label: context.l10n!.customerName,
                rowData: 'محمد علی مراد بیگ زاده',
              ),
              InfoRow(
                label: context.l10n!.mobilePhoneNumber,
                rowData: '09121234567',
              ),
              InfoRow(
                label: context.l10n!.visitPlace,
                rowData:
                    'شهرک غرب، زر افشان، فاز چهار، و یک متن طولانی در پلاک 3 خط دارای نمونه',
              ),
              const SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color(0xfff6f6f8),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InfoRow(
                        label: context.l10n!.fileStatus,
                        rowData: 'تایید شده توسط نماینده',
                      ),
                      InfoRow(
                        label: context.l10n!.visitTime,
                        rowData: '14:11 _ 1401/06/01',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 20.0),
                            primary: Colors.white,
                            side: const BorderSide(
                              width: 1.0,
                              color: AppTheme.defaultColor,
                            )),
                        child: Text(
                          context.l10n!.enteringToFilePage,
                          style: const TextStyle(color: AppTheme.defaultColor),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const HexaShape(),
                        Text(
                          context.l10n!.done,
                          style: TextStyle(color: const Color(0xff1cae81)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
