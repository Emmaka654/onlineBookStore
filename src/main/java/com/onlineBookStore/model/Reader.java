package com.onlineBookStore.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Getter
@Setter
@ToString
@RequiredArgsConstructor
@Entity
@Table(name = "readers")
public class Reader {
    @Id
    @Column(name = "readerid")
    private Long readerId;
    @Column(name = "readername")
    private String readerName;
    @Column(name = "readeremail")
    private String readerEmail;
    @Column(name = "readerpassword")
    private String readerPassword;

    @OneToMany(targetEntity = Book.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "rb_fk", referencedColumnName = "readerId")
    private List<Book> purchases;
}