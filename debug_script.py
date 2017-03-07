# -*- coding: utf-8 -*-
"""
Created on Mon Mar  6 11:00:33 2017

@author: pjh
"""

import json
import os
import time

import eval_util
import losses
import frame_level_models
import video_level_models
import readers
import tensorflow as tf
import tensorflow.contrib.slim as slim
from tensorflow import app
from tensorflow import flags
from tensorflow import gfile
from tensorflow import logging
import utils


with tf.name_scope("train_input"):
    files = gfile.Glob("/data4/pjh/data/yt8m_video_level/train/train*.tfrecord")
