package com.example.msgapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        Intent email = new Intent(Intent.ACTION_SEND);


        email.putExtra(Intent.EXTRA_EMAIL, new String[]{ "sherinsnehaj@gmail.com"});
        email.putExtra(Intent.EXTRA_SUBJECT, "mailsub");
        email.putExtra(Intent.EXTRA_TEXT, "hi how are you");

        //need this to prompts email client only
        email.setType("message/rfc822");

        startActivity(Intent.createChooser(email, "Choose an Email client :")); // no permission needed for mail


    }
}