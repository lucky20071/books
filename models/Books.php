<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "books".
 *
 * @property int $id
 * @property string $book_name
 * @property int $author_id
 */
class Books extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'books';
    }
        
        public function getAuthor(){
        return $this->hasOne(Authors::className(), ['id' => 'author_id']);
    }
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['book_name', 'author_id'], 'required'],
            [['author_id'], 'integer'],
            [['book_name', 'author_name'], 'string', 'max' => 255],
            [['descr'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'book_name' => 'Book Name',
            'author_name'=> 'Author_name',
            'author_id' => 'Author ID',
            'descr'=> 'Description',
        ];
    }
}
