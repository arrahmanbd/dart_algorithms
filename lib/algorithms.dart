sortZA(List list) {
  return list.sort((a, b) => b.compareTo(a));
}

//Liner Search Algorithms
linerSerach(List arry, int target) {
  for (var i = 0; i < arry.length; i++) {
    if (arry[i] == target) {
      return i; //Return position
    }
  }
  return -1; //NotFound
}

//Bubble sort Algorithms
bubbleSort(List arry) {
  for (int i = 0; i < arry.length - 1; i++) {
    for (var j = 0; j < arry.length - i - 1; j++) {
      if (arry[j] > arry[j + 1]) {
        int temp = arry[j];
        arry[j] = arry[j + 1];
        arry[j + 1] = temp;
        print(
            'Element at pos j and j+1 after swap: ${arry[j]} & ${arry[j + 1]}');
      }
    }
  }
  return arry;
}

//Quick
void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high);
    quickSort(arr, low, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (arr[j] < pivot) {
      i++;
      swap(arr, i, j);
    }
  }

  swap(arr, i + 1, high);

  return i + 1;
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

//Binary Serach Alogorithms
int binarySearch(List<int> sortedList, int target) {
  int low = 0;
  int high = sortedList.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2; // Finding the middle index

    if (sortedList[mid] == target) {
      return mid; // Found the target element at index 'mid'
    } else if (sortedList[mid] < target) {
      low = mid + 1; // Target is in the right half
    } else {
      high = mid - 1; // Target is in the left half
    }
  }

  return -1; // Target element not found
}

fibonacci(int n) {
  List<int> fib = [0, 1];
  for (int i = 2; i <= n; i++) {
    fib[i] = fib[i - 1] + fib[i - 2];
  }
  return fib[n];
}
