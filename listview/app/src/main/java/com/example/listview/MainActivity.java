package com.example.listview;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
GridView gridView;
ArrayList arrayList;
ArrayAdapter arrayAdapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        gridView=findViewById(R.id.grid);
        arrayList=new ArrayList();
        arrayList.add("sherin");
        arrayList.add("sharwin");
        arrayList.add("dini");
        arrayList.add("ruby");
        arrayList.add("joseph");
        arrayList.add("destimona");
        arrayList.add("sherli");
        arrayList.add("jeron");
        arrayAdapter=new ArrayAdapter<String>(MainActivity.this,android.R.layout.simple_list_item_1,arrayList);
        gridView.setAdapter(arrayAdapter);

        gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(MainActivity.this, "Hey sherin this is your family member "+arrayList.get(position), Toast.LENGTH_SHORT).show();
            }
        });
    }
}