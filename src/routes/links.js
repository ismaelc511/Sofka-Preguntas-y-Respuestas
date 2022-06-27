const express = require('express');
const router = express.Router();

const pool = require('../database');
/*const { isLoggedIn } = require('../lib/auth');*/

router.get('/questions',/*isLoggedIn,*/ async (req, res) => {
    const questions = await pool.query('SELECT id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image FROM questions WHERE id=1')
    console.log(questions)
    res.render('links/questions', { questions });
    console.log(questions);
})

router.post('/questions', async(req, res) =>{
    const { id, round, category, question, answer, incorrect1, incorrect2, incorrect3, image} = req.body;
    const newLink = {
        id,
        round,
        category,
        question,
        answer,
        image
    };
    await pool.query('INSERT INTO questions set ?' [newLink]);
    req.flash('success', 'Link saved successfully');
    res.redirect('/questions');
});

router.get('/add', (req, res) => {
    res.render('links/add');
});

router.post('/add', async (req, res) =>{
    const { firstName, lastName, typeOfAward } = req.body;
    const newLink = {
        firstName,
        lastName,
        typeOfAward
    };
    await pool.query('INSERT INTO users set ?', [newLink]);
    req.flash('success', 'Link saved successfully');
    res.redirect('/links');
});

router.get('/', async (req, res) => {
    const users = await pool.query('SELECT * FROM users')
    console.log(users)
    res.render('links/users', { users });
})

router.get('/delete/:id', async (req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM users WHERE ID = ?', [id]);
    req.flash('success', 'User removed successfully');
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
    await pool.query('UPDATE users set ? WHERE id = ?', [newLink, id] );
    req.flash('success', 'User Updated Successfully')
    res.redirect('/links');
})

module.exports = router;