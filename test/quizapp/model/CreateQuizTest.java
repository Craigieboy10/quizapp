/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quizapp.model;

import java.time.LocalDateTime;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author iain
 */
public class CreateQuizTest {
    
    public CreateQuizTest() {
    }

    /**
     * Test of insertQuiz method, of class CreateQuiz.
     */
    @Test
    public void testInsertQuiz() {
        System.out.println("insertQuiz");
        String quizname = "Quiz Generated by CreateQuizTest";
        int module = 1;
        int staffID = 500;
        LocalDateTime created = null;
        int available = 0;
        CreateQuiz instance = new CreateQuiz();
        boolean expResult = true;
        boolean result = instance.insertQuiz(quizname, module, staffID, created, available);
        assertEquals(expResult, result);
    }
    
}