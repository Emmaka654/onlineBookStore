package com.onlineBookStore.model;


import jakarta.persistence.*;
import lombok.*;


@Getter
@Setter
@ToString
@RequiredArgsConstructor
@Entity
@Table(name = "books")
public class Book {
    @Id
    @Column(name = "bookid")
    private Long bookId;
    @Column(name = "booktitle")
    private String bookTitle;
    @Column(name = "bookauthor")
    private String bookAuthor;
    @Column(name = "bookprice")
    private Double bookPrice;
}
