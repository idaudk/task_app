part of socket_view;

class _SocketData extends GetView<SocketController> {
  const _SocketData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: StreamBuilder(
        stream: controller.channel!.stream,
        builder: (context, snapshot) {
          /// We are waiting for incoming data data
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          /// We have an active connection and we have received data
          if (snapshot.connectionState == ConnectionState.active &&
              snapshot.hasData) {
            return Center(
              child: Text(
                '${snapshot.data}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }

          /// When we have closed the connection
          if (snapshot.connectionState == ConnectionState.done) {
            return const Center(
              child: Text(
                'No more data',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            );
          }

          /// For all other situations, we display a simple "No data"
          /// message
          return const Center(
            child: Text('No data'),
          );
        },
      ),
    );
  }
}
