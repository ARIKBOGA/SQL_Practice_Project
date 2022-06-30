package com.example.sql_practice_project;

public class MAIN {
    public static String capitalize(String str) {
        String[] arr = str.split(" ");
        for (int i = 0; i < arr.length; i++) {
            arr[i] = arr[i].substring(0, 1).toUpperCase() + arr[i].substring(1);
        }
        return String.join(" ", arr);
    }

    public static void main(String[] args) {
        System.out.println(capitalize("who is making highest salary"));
        System.out.println("how to rename columns after queried".toUpperCase());
    }
}