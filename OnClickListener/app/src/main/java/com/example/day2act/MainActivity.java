package com.example.day2act;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    String s;
    TextView t;
    Button one;
    Button two;
    Button three;
    EditText name;
    EditText mail;
    EditText mobile;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        one = findViewById(R.id.editTextTextPersonName);
        two =findViewById(R.id.editTextTextPersonName2);
        three=findViewById(R.id.editTextTextPersonName3);
        name=findViewById(R.id.name);
        mail=findViewById(R.id.mail);
        mobile=findViewById(R.id.mobile);
        t = findViewById(R.id.textView);

        one.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
            s= name.getText().toString()+"\n"+mail.getText().toString()+"\n"+mobile.getText().toString();
            Toast.makeText(MainActivity.this, s, Toast.LENGTH_SHORT).show();
            }
        });


        two.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
            s= name.getText().toString()+"\n"+mail.getText().toString()+"\n"+mobile.getText().toString();
            t.setText(s);
            }
        });


        three.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                s= name.getText().toString()+" Hi";
                Intent nextpg= new Intent(MainActivity.this,MainActivity2.class);
                nextpg.putExtra("xyz",s);
                startActivity(nextpg);
                Toast.makeText(MainActivity.this, "Success", Toast.LENGTH_SHORT).show();
            }
        });

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.mymenu,menu);
        return super.onCreateOptionsMenu(menu);
    }

    public void settings(MenuItem item) {
        new AlertDialog.Builder(MainActivity.this)
                .setTitle("Alert!")
                .setMessage("Battery Low!")
                .setPositiveButton("Okay", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Intent obj = new Intent(MainActivity.this,MainActivity2.class);
                        startActivity(obj);
                    }
                })
                .setNegativeButton("No", null)
                .setNeutralButton("smile",null)
                .show();

    }

    public void wed(MenuItem item) {
        Dialog dia = new Dialog(MainActivity.this);
        dia.setContentView(R.layout.customdia);
        dia.show();
    }

    public void webs(MenuItem item) {
        Toast.makeText(this, "website menu got clicked", Toast.LENGTH_SHORT).show();
        Intent obj = new Intent(MainActivity.this,MainActivity3.class);
        startActivity(obj);

    }

}