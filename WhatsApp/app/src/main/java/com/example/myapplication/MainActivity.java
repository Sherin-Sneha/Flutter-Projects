package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void wopen(View view){
        startActivity( (new Intent(Intent.ACTION_VIEW)).setData(Uri.parse("https://api.whatsapp.com/send?phone="+"919150522345")));
    }
}