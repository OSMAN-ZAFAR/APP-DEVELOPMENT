enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled
}

void main()
{
  OrderStatus status=OrderStatus.pending;
  checkOrderStatus(status);
}




void checkOrderStatus(OrderStatus status)
{
    switch(status){
      case OrderStatus.pending:
        print('Your order has been received and is waiting to be processed.');
      break;

      case OrderStatus.processing:
        print('Your order is currently being prepared.');
      break;

      case OrderStatus.shipped:
        print('Your order has been dispatched and is on its way.');
      break;

      case OrderStatus.delivered:
        print('Your order has successfully arrived.');
      break;

      case OrderStatus.cancelled:
        print('Your order has been cancelled.');
      break;

    }
}

