import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/generated/l10n.dart';

class AuctionProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAuctionDetail("المزاد يبدأ في:", "122 يوم 11 سا 35 د 29 ث"),
          _buildAuctionDetail("المزاد يغلق في:", "01-05-2025 07:59 PM"),
          Divider(thickness: 1, color: Colors.black),
          _buildWarningMessage(),
          Divider(thickness: 1, color: Colors.black),
          _buildCurrentAuctionStatus(),
          Divider(thickness: 1, color: Colors.black),
          _buildLocationDetails(context),
          Divider(thickness: 1, color: Colors.black),
          _buildAuctionPricing(context),
          SizedBox(height: 20.h),
          _buildBidInput(context),
          _buildSubmitButton(context),
        ],
      ),
    );
  }

  Widget _buildAuctionDetail(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: RichText(
        text: TextSpan(
          text: "• $title \n",
          style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
          children: [
            TextSpan(
                text: value,
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black.withAlpha(160),
                    decoration: TextDecoration.none)),
          ],
        ),
      ),
    );
  }

  Widget _buildWarningMessage() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Text(
        "• لم  تقم بالمزايدة على هذا المنتج حتى الآن \nقيمة المزايدة الحالية لهذه السلعة فرصة لا تعوض",
        style: TextStyle(
            fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.black),
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget _buildCurrentAuctionStatus() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildStatusRow(
            "قيمة المزايدة الحالية:", "لا توجد مزايدات حالية", Colors.red),
        _buildStatusRow("اسم المزايد:", "لا يوجد", Colors.red),
      ],
    );
  }

  Widget _buildStatusRow(String title, String value, Color color) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: RichText(
        text: TextSpan(
          text: "$title ",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          children: [
            TextSpan(
                text: value, style: TextStyle(fontSize: 16.sp, color: color)),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationDetails(context) {
    return Column(
      children: [
        Wrap(alignment: WrapAlignment.start, children: [
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).country, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).city, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).auction_duration, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).region, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).sale_type, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).sale_type, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).approximate_value, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).product_status, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).auction_type, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).product_description, "000000"),
          SizedBox(width: 10.w),
          _buildRichText(S.of(context).product_code, "000000"),
          SizedBox(width: 10.w),
        ])
      ],
    );
  }

  Widget _buildRichText(String title, String value) {
    return RichText(
      text: TextSpan(
        text: "$title ",
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: ": $value ",
            style: TextStyle(
              fontSize: 13.sp,
              color: Colors.black.withAlpha(160),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAuctionPricing(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRichText(S.of(context).instant_purchase_price, " 1000 EGP"),
        _buildRichText(S.of(context).starting_bid_price, " 0 EGP"),
        _buildRichText(S.of(context).bid_increment_value, " 50000 EGP"),
      ],
    );
  }

  Widget _buildBidInput(context) {
    return Row(
      children: [
        Text(
          S.of(context).live_bidding,
          style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Container(
            clipBehavior: Clip.hardEdge,
            padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0),
            decoration: BoxDecoration(
              color: AppColors.gradiant4,
              border: Border.all(
                width: 2,
                color: AppColors.gradiant4,
              ),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.transparent,
                        child: Text(S.of(context).confirm_bid,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14.sp, color: Colors.white)),
                      ),
                    )),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(15.r),
                          topEnd: Radius.circular(15.r),
                        )),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "اكتب المزايدة",
                        hintStyle:
                            TextStyle(fontSize: 16.sp, color: Colors.grey),
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton(context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 12.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r)),
          ),
          child:
              Text(S.of(context).place_bid, style: TextStyle(fontSize: 18.sp)),
        ),
      ),
    );
  }
}
