package com.onlineBookStore.controller;

import com.onlineBookStore.model.Reader;
import com.onlineBookStore.dto.OrderRequest;
import com.onlineBookStore.repository.ReaderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class OrderController {

    @Autowired
    private ReaderRepository readerRepository;

    @PostMapping("/saveOrder")
    public Reader saveOrder(@RequestBody OrderRequest request) {

        return readerRepository.save(request.getReader());
    }

    @GetMapping("/findAllOrders")
    public List<Reader> findAll() {

        return readerRepository.findAll();
    }

    @GetMapping ("/findById")
    public Optional<Reader> findById(@RequestParam Long id){

        return readerRepository.findById(id);
    }

    @DeleteMapping("/deleteById")
    public void delete(@RequestParam Long id){

        readerRepository.deleteById(id);
    }

}