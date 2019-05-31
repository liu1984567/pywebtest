#!/usr/bin/env python3
# -*- coding: utf-8 -*-

__author__ = 'Michael Liao'

import models
import orm

def test_users():
    print(orm.select('select * from users', None))
    user = models.User(id='001', name='test', passwd='test', admin=False, email='test001@unknow.com')
    print(user)

if __name__ == '__main__':
    test_users()


