package com.codingrecipe.member.service;

import com.codingrecipe.member.dto.BoardDto;
import com.codingrecipe.member.dto.FilesDto;
import com.codingrecipe.member.dto.LikesDto;
import com.codingrecipe.member.dto.PageDto;
import com.codingrecipe.member.repository.BoardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class BoardService{
    private final BoardRepository boardRepository;
    private String uploadPath = "D:\\spring1226\\springWorkPlace\\src\\main\\webapp\\resources\\static\\userFiles\\";
    public int totalPage() {
        return boardRepository.totalPage();
    }
    public List<BoardDto> blogList(PageDto pageDto) {
        return boardRepository.boardList(pageDto);
    }
    public int postBlog(BoardDto boardDto) {
        return boardRepository.postBlog(boardDto);
    }
    public BoardDto blogDetail(Integer id) {
        return boardRepository.blogDetail(id);
    }

    public void saveFile(MultipartFile[] files, int boardId){
        for (MultipartFile file : files){
            if(!file.isEmpty()){
                try {
                    String fileName = file.getOriginalFilename();
                    String extension = "";
                    int lastIndexOfDot = fileName.lastIndexOf(".");
                    if (lastIndexOfDot != -1) {
                        extension = fileName.substring(lastIndexOfDot + 1);
                    }
                    FilesDto filesDto = new FilesDto();
                    filesDto.setFileExtension(extension);
                    filesDto.setBoardId(boardId);
                    UUID uuid = UUID.randomUUID();
                    filesDto.setFileName(uuid.toString());

                    Path savePath = Paths.get(uploadPath + filesDto.getFileName()+"."+extension);
                    File saveFile = savePath.toFile();
                    // 파일 저장
                    file.transferTo(saveFile);
                    boardRepository.saveFile(filesDto);
                }catch (IOException e){
                    e.printStackTrace();
                }
            }
        }
    }

    public List<FilesDto> files(Integer id) {
        return boardRepository.file(id);
    }


    public boolean findLike(LikesDto likesDto) {
        int result = boardRepository.findLike(likesDto);
        if(result>0){
            return true;
        }else {
            return false;
        }
    }

    public int saveLike(LikesDto likesDto) {
        return boardRepository.saveLike(likesDto);
    }

    public void increaseLike(Integer id) {
        boardRepository.increaseLike(id);
    }
}
