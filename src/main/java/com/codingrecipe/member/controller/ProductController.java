package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.ContentBlocksDto;
import com.codingrecipe.member.dto.ProductsDto;
import com.codingrecipe.member.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/product")
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    @Value("${jwt.secret}")
    private String secretKey;


    @GetMapping("/")
    public String findAll(Model model){
        List<ProductsDto> productsDtoList = productService.findAll();
        model.addAttribute("productsList", productsDtoList);
        return "productsViews/products";
    }
    @GetMapping("/productDetail")
    public String products(@RequestParam("id")Integer id, Model model){
        List<ContentBlocksDto> contentBlocksDtos = productService.findById(id);
        ProductsDto productsDto = productService.findDetail(id);
        model.addAttribute("contents", contentBlocksDtos);
        model.addAttribute("productsDto", productsDto);
        return "productsViews/productDetail";
    }


}
