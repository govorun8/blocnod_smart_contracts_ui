import 'package:blocnod_smart_contracts_ui/components/custom_user_info.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract_from_back/smart_contract_from_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmartContractTile extends StatelessWidget {
  const SmartContractTile({
    super.key,
    required this.theme,
    required this.smartContract,
    required this.translate,
  });

  final ThemeData theme;
  final SmartContractFromBack smartContract;
  final S translate;

  @override
  Widget build(BuildContext context) {
    late String statusAsset;
    switch (smartContract.status) {
      case (SmartContractStatus.created):
        statusAsset = 'assets/contract_state/inprogress.svg';
        break;
      case (SmartContractStatus.inProgress):
        statusAsset = 'assets/contract_state/inprogress.svg';
        break;
      case (SmartContractStatus.finished):
        statusAsset = 'assets/contract_state/done.svg';
        break;
      case (SmartContractStatus.canceled):
        statusAsset = 'assets/contract_state/error.svg';
        break;
      case (SmartContractStatus.executorConfirmation):
        statusAsset = 'assets/contract_state/attention.svg';
        break;
      case (SmartContractStatus.executorAgreement):
        statusAsset = 'assets/contract_state/attention.svg';
        break;
      case (SmartContractStatus.creatorConfirmation):
        statusAsset = 'assets/contract_state/attention.svg';
        break;
      case (SmartContractStatus.creatorAgreement):
        statusAsset = 'assets/contract_state/attention.svg';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1.5,
          color: theme.primaryColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomInfoRow(
            title: translate.contract_type,
            value: smartContract.type == SmartContractType.rent
                ? translate.rent
                : translate.transportation,
            theme: theme,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${translate.status}:',
                style: theme.textTheme.bodyMedium,
              ),
              SvgPicture.asset(
                statusAsset,
                height: 15,
              ),
            ],
          ),
          CustomInfoRow(
            title: translate.contractor,
            value: smartContract.executor.name,
            theme: theme,
          ),
          CustomInfoRow(
            title: translate.price,
            value: smartContract.value.toString(),
            theme: theme,
          ),
          CustomInfoRow(
            title: translate.arbitration_mechanism,
            value: smartContract.arbitration == 'Court'
                ? translate.court
                : smartContract.arbitration == 'Penalty'
                    ? translate.penalty
                    : smartContract.arbitration,
            theme: theme,
          ),
        ],
      ),
    );
  }
}
