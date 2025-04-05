int sequentialSearch(List<int> arr, int target) {
  int comparisons = 0;
  for (int i = 0; i < arr.length; i++) {
    comparisons++;
    if (arr[i] == target) {
      print('Sequential Search: Index = $i, Comparisons = $comparisons');
      return i;
    }
  }
  print('Sequential Search: Not found, Comparisons = $comparisons');
  return -1;
}

int binarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;
  int comparisons = 0;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    comparisons++;
    if (arr[mid] == target) {
      print('Binary Search: Index = $mid, Comparisons = $comparisons');
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  print('Binary Search: Not found, Comparisons = $comparisons');
  return -1;
}

void main() {
  List<int> data = [2, 4, 6, 8, 10, 12, 14, 16];
  int target = 12;

  sequentialSearch(data, target);
  binarySearch(data, target);
}
