

import 'package:alno_ai/data/response/status.dart';

class ApiResponse {
  Status status;
  String? message;

  ApiResponse(this.status);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed() : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;
  ApiResponse.fetchingNextBatch() :  status = Status.FETCHING_NEXT_BATCH;
  ApiResponse.fetchedAllBatches() : status = Status.FETCHED_ALL_BATCHES;
  @override
  String toString() {
    return "Status : $status \n Message : $message \n";
  }
}