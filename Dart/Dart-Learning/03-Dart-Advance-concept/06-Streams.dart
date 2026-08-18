
//------------------------------------Stream without Broadcast--------------------------------------

// void main()
// {
//   var subscrption=count().listen((value)
//   {
//     print(value);
//   });

//   Future.delayed(Duration(seconds:5),
//   ()
//   {
//     subscrption.cancel();
//   });
// }

// Stream<int> count()
// {
//   return Stream.periodic(Duration(seconds:1),(i)=>i);
// }

//------------------------------------Stream with Broadcast--------------------------------------

void main()
{
  var subscription=count();
  subscription.listen(print);
  subscription.listen(print);

}
                                      // Stream is used for getting multiple values in future, 
                                      // while Future is used for getting only one value in future. 
Stream<int> count()
{
  return Stream.periodic(
    Duration(seconds:1),(i)=>i
    ).asBroadcastStream();
}