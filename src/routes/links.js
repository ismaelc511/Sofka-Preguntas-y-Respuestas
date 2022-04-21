const express = require('express');
const router = express.Router();

const pool = require('../database');

router.get('/add', (req, res) => {
    res.render('links/add');
})

router.post('/add', async (req, res) =>{
    const { firstName, lastName, typeOfAward } = req.body;
    const newLink = {
        firstName,
        lastName,
        typeOfAward
    };
    await pool.query('INSERT INTO users set ?', [newLink]);
    res.redirect('/links');
});

router.get('/', async (req, res) => {
    const users = await pool.query('SELECT * FROM users')
    console.log(users)
    res.render('links/users', { users });
})

router.get('/showQuestions', (req, res) => {
    res.render('links/showQuestions');
})

router.get('/', async (req, res) => {
    const questions = await pool.query('SELECT * FROM questions')
    console.log(questions)
    res.render('links/showQuestions', { questions: questions[0] });
})

router.post('/showQuestions/:id', async (req, res) => {
    const { id } = req.params;
    const { round, category, question, answer, incorrect1, incorrect2, incorrect3, image } = req.body;
    const newLink = {
        round,
        category,
        question,
        answer,
        incorrect1,
        incorrect2,
        incorrect3,
        image
    };
    console.log(newLink);
    await pool.query('UPDATE questions set ? WHERE id = ?', [newLink, id] );
    res.redirect('/links/showQuestions');
})

router.get('/delete/:id', async (req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM users WHERE ID = ?', [id]);
    res.redirect('/links');
})

router.get('/edit/:id', async (req, res) => {
    const { id } = req.params;
    const users = await pool.query('SELECT * FROM users WHERE id = ?', [id]);
    res.render('links/edit', { user: users[0] });
});

router.post('/edit/:id', async (req, res) => {
    const { id } = req.params;
    const { firstName, lastName, typeOfAward } = req.body;
    const newLink = {
        firstName,
        lastName,
        typeOfAward
    };
    console.log(newLink);
    await pool.query('UPDATE users set ? WHERE id = ?', [newLink, id] );
    res.redirect('/links');
})

module.exports = router;