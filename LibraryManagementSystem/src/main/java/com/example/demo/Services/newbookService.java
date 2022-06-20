package com.example.demo.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Service
public class newbookService {
//
    @Autowired
    JdbcTemplate connection;

    public boolean newbook(String book_title, String book_author, String book_genre, String book_topics, int publisher_id, int year_published, String Status_s, String book_available,int times_borrowed) {
        int i = connection.update(
                "INSERT INTO books (book_title, book_author, book_genre, book_topics, publisher_id, year_published, status, book_available,times_borrowed) values (?, ?, ?, ?,?, ?, ?, ?, ?)",
                new Object[]{book_title, book_author, book_genre, book_topics, publisher_id, year_published, Status_s, book_available,times_borrowed}
        );

        return i == 1;
    }

    public boolean removebook(String book_title) {
        int i = connection.update(
                "DELETE FROM books WHERE book_title = ?",
                book_title
        );

        return i == 1;
    }
    public boolean borrowBook(String book_id,String user_username,String return_date) {
        LocalDateTime localDate = LocalDateTime.now();
        LocalDateTime due = localDate.plusDays(30);
        int i = connection.update(
                "INSERT INTO  borrower_details(book_id,return_date,borrowed_on,user_username )VALUES(?,?,CURRENT_TIMESTAMP,?)",
                new Object[]{book_id,return_date,user_username}
        );
        int j = connection.update(
                "UPDATE borrower_details SET days_overdue = DATEDIFF(borrowed_on,return_date),due_date = ? WHERE user_username = ? ",
                new Object[]{due,user_username}
        );
        int k = connection.update(
                "UPDATE books SET book_available = 'no',times_borrowed = times_borrowed+1 WHERE book_id = ?",
                new Object[]{book_id}
        );

        return i == 1&&j==1;
    }
}