import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/data/models/help_model.dart';
import 'package:flutter_qpay_client/base/base_bloc.dart';

class HelpProvider extends BaseBloc {
  List<HelpModel> helpTypes = [
    HelpModel(
      id: 0,
      name: 'Общие вопросы',
      items: [
        HelpModelItem(
          id: 0,
          question: 'Что такое Q PAY Business?',
          answer:
              'Q PAY Business – это ваша собственная программа лояльности, которая даёт возможность начислить бонусы, получать и хранить данные о ваших клиентах, их покупках.',
        ),
        HelpModelItem(
          id: 1,
          question: 'Как зарегестрироваться в Q PAY?',
          answer: '1',
        ),
        HelpModelItem(
          id: 2,
          question: 'Как зарегестрироваться в Q PAY?',
          answer: '2',
        ),
        HelpModelItem(
          id: 3,
          question: 'Какие преимушества Q PAY?',
          answer: '3',
        ),
        HelpModelItem(
          id: 4,
          question: 'Q PAY Business работают с физ. лицами?',
          answer: '4',
        ),
        HelpModelItem(
          id: 5,
          question: 'Что такое бонусы?',
          answer: '5',
        ),
        HelpModelItem(
          id: 6,
          question:
              'Как покупатель поймет что магазин является партнером Q PAY Business?',
          answer: '6',
        ),
      ],
    ),
    HelpModel(
      id: 1,
      name: 'Разделы приложения',
      items: [
        HelpModelItem(
          id: 0,
          question: 'Как провести новую транзакцию?',
          answer: '1',
        ),
        HelpModelItem(
          id: 1,
          question: 'Нужен ли отдельный телефон для  Q Pay Business?',
          answer: '2',
        ),
        HelpModelItem(
          id: 2,
          question: 'Кто может добавлять или удалять кассиров в точке продаж?',
          answer: '3',
        ),
        HelpModelItem(
          id: 3,
          question: 'Как добавить кассира в точку?',
          answer: '4',
        ),
        HelpModelItem(
          id: 4,
          question: 'Клиенты / Покупатели',
          answer: '5',
        ),
      ],
    ),
  ];

  toggleCollapsed(int helpTypeId, int index) {
    helpTypes[helpTypeId].items![index].toggleCollapsed();
    notifyListeners();
  }
}