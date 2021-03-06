package com.Captton.clase1.ejercicio7;

import java.util.Arrays;

public class Ejercicio7 {

	public static void main(String[] args) {
		int [] unArraySimple = {3,2,4,1,5};
		int low = 0;
		int high = unArraySimple.length - 1;
		System.out.println(Arrays.toString(unArraySimple));
		quickSort(unArraySimple, low, high);
		System.out.println(Arrays.toString(unArraySimple));
	}

public static void quickSort(int[] arr, int low, int high) {
	if (arr == null || arr.length == 0)
		return;
	 
	if (low >= high)
		return;

	// pick the pivot
	int middle = low + (high - low) / 2;
	int pivot = arr[middle];

	// make left < pivot and right > pivot
	int i = low, j = high;
	while (i <= j) {
		while (arr[i] < pivot) {
			i++;
		}

		while (arr[j] > pivot) {
			j--;
		}

		if (i <= j) {
			int temp = arr[i];
			arr[i] = arr[j];
			arr[j] = temp;
			i++;
			j--;
		}
	}

	// recursively sort two sub parts
	if (low < j)
		quickSort(arr, low, j);

	if (high > i)
		quickSort(arr, i, high);
}

	
}
