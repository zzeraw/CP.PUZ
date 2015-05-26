<?php

/**
 * This is the model class for table "reviews".
 *
 * The followings are the available columns in table 'reviews':
 * @property integer $id
 * @property string $name
 * @property string $annotation
 * @property string $body
 * @property string $image
 * @property string $image_attr_title
 * @property string $image_attr_alt
 * @property integer $nn
 * @property string $created_ip
 * @property string $created_datetime
 * @property integer $created_user
 * @property string $created_username
 * @property string $modified_ip
 * @property string $modified_datetime
 * @property integer $modified_user
 * @property string $modified_username
 * @property integer $active
 */
class Review extends CActiveRecord
{
	public $image_width = 100;
    public $image_height = 100;

    public function scopes()
    {
        $scopes = parent::scopes();

        $scopes['active'] = array(
            'condition' => 'active = 1'
        );

        $scopes['nn'] = array(
            'order' => 'nn, id'
        );

        $scopes['limit'] = array(
            'limit' => 4
        );

        return $scopes;
    }

    public function behaviors()
    {
        return array(
            'ImageBehavior' => array(
                'class' => 'ImageBehavior',
                'original_resize' => true,
                'original_resize_width' => $this->image_width,
                'original_resize_height' => $this->image_height,
                'thumb' => false,
                'thumb_width' => 100,
                'thumb_height' => false,
                'original_image_filename' => 'review_item_' . time(),
            ),
            'BSystemInfoBehavior' => array(
                'class' => 'BSystemInfoBehavior',
            ),
        );
    }

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'reviews';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array(
				'name',
				'required',
			),
			array(
				'nn, created_user, modified_user, active',
				'numerical',
				'integerOnly' => true,
			),
			array(
				'name, image, image_attr_title, image_attr_alt, created_ip, modified_ip, modified_username',
				'length',
				'max' => 300,
			),
			array(
				'created_username',
				'length',
				'max' => 200,
			),
			array(
				'annotation, body, created_datetime, modified_datetime',
				'safe',
			),
			array(
				'id, name, annotation',
				'safe',
				'on' => 'search',
			),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'modifiedUser' => array(self::BELONGS_TO, 'User', 'modified_user'),
            'createdUser' => array(self::BELONGS_TO, 'User', 'created_user'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'name' => 'Name',
			'annotation' => 'Annotation',
			'body' => 'Body',
			'image' => 'Image',
			'image_attr_title' => 'Image Attr Title',
			'image_attr_alt' => 'Image Attr Alt',
			'nn' => 'Nn',
			'created_ip' => 'Created Ip',
			'created_datetime' => 'Created Datetime',
			'created_user' => 'Created User',
			'created_username' => 'Created Username',
			'modified_ip' => 'Modified Ip',
			'modified_datetime' => 'Modified Datetime',
			'modified_user' => 'Modified User',
			'modified_username' => 'Modified Username',
			'active' => 'Active',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria = new CDbCriteria;

		$criteria->compare('id', $this->id);
		$criteria->compare('name', $this->name, true);
		$criteria->compare('annotation', $this->annotation, true);
		$criteria->compare('body', $this->body, true);
		$criteria->compare('image', $this->image, true);
		$criteria->compare('image_attr_title', $this->image_attr_title, true);
		$criteria->compare('image_attr_alt', $this->image_attr_alt, true);
		$criteria->compare('nn', $this->nn);
		$criteria->compare('created_ip', $this->created_ip, true);
		$criteria->compare('created_datetime', $this->created_datetime, true);
		$criteria->compare('created_user', $this->created_user);
		$criteria->compare('created_username', $this->created_username, true);
		$criteria->compare('modified_ip', $this->modified_ip, true);
		$criteria->compare('modified_datetime', $this->modified_datetime, true);
		$criteria->compare('modified_user', $this->modified_user);
		$criteria->compare('modified_username', $this->modified_username, true);
		$criteria->compare('active', $this->active);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Review the static model class
	 */
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}
}
