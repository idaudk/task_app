part of dashboard_view;

class _FeedBox extends GetView<DashboardController> {
  const _FeedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (_, index){
      return FadeAnimation(
        child: InkWell(
          onTap: () {
            // controller.gotoDetailsScreen(
            //     deliveryId: singleDeliveryDetails.id.toString());
          },
          onLongPress: () {},
          child: Container(
            margin: EdgeInsets.only(bottom: 15.h),
            width: Get.width,
            constraints: BoxConstraints(
              maxHeight: double.infinity,
            ),
            // height: 120.h,
            // padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppBasicTheme().secondartColorTwo.withOpacity(0.2)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   color: Colors.white,
                  //   padding:
                  //       EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Text(
                  //         'New Order',
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 20.r,
                  //             color: AppBasicTheme().primarycolorTwo),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order Detials',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.r),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      singleDeliveryDetails
                                          .order?.fkCustomer?.firstName ??
                                          'No Name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.r),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      singleDeliveryDetails
                                          .order?.fkCustomer?.lastName ??
                                          ' ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.r),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Payment Type: ' +
                                      singleDeliveryDetails.order!.paymentType
                                          .toString(),
                                  style: TextStyle(fontSize: 11.r),
                                ),
                                Text(
                                  'Order placed: ' +
                                      Jiffy(singleDeliveryDetails.acceptedOn
                                          .toString())
                                          .MMMEd,
                                  style: TextStyle(fontSize: 11.r),
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'New Order',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.r,
                                      color: AppBasicTheme().secondartColorTwo),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                
                              ],
                            )),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

