part of dashboard_view;

class _FloatingButton extends GetView<DashboardController> {
  const _FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.gotoSocketScreen(),
      child: Container(
        height: 50,
        width: 150.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
            color: AppBasicTheme().primaryColor,
            borderRadius: BorderRadius.circular(50)),
        alignment: Alignment.center,
        child: Text(
          'Goto Web Socket Screen',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 9.r, color: Colors.white),
        ),
      ),
    );
  }
}
