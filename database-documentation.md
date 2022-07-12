# Database Documentation

## 1. Table Name：`radar`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|     sn      | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|    name     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|  radar_ip   | VARCHAR  |   15   |    false    |     false      |   true    |   null   |    null     |
|     lng     |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|     lat     |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|  elevation  |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|   towards   |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|   status    | BOOLEAN  |   -1   |    false    |     false      |   true    |   null   |    null     |
|   rsu_id    | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|    desc     | VARCHAR  |  255   |    false    |     false      |   true    |   null   |    null     |

## 2. Table Name：`camera`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|     sn      | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|    name     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
| stream_url  | VARCHAR  |  255   |    false    |     false      |   true    |   null   |    null     |
|     lng     |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|     lat     |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|  elevation  |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|   towards   |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|   status    | BOOLEAN  |   -1   |    false    |     false      |   true    |   null   |    null     |
|   rsu_id    | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|    desc     | VARCHAR  |  255   |    false    |     false      |   true    |   null   |    null     |

## 3. Table Name：`mng`

|    Field Name     |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|        id         | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
|    create_time    | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|    update_time    | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|      rsu_id       | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|  heartbeat_rate   | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
| running_info_rate | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|     log_rate      | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|     log_level     | VARCHAR  |   5    |    false    |     false      |   false   |   null   |    null     |
|      reboot       | VARCHAR  |   10   |    false    |     false      |   false   |   null   |    null     |
|  address_change   |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |
|   extend_config   | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |

## 4. Table Name：`rsu_config_rsu`

|  Field Name   |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :-----------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|      id       | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
|  create_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|  update_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| rsu_config_id | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|    rsu_id     | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|    status     | INTEGER  |   -1   |    false    |     false      |   true    |   null   |    null     |

## 5. Table Name：`rsu`

|  Field Name   |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :-----------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|      id       | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
|  create_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|  update_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|    rsu_id     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|    rsu_esn    | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|    rsu_ip     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|   rsu_name    | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|    version    | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|  rsu_status   | BOOLEAN  |   -1   |    false    |     false      |   true    |   null   |    null     |
|   location    |   JSON   |   -1   |    false    |     false      |   true    |   null   |    null     |
|    config     |   JSON   |   -1   |    false    |     false      |   true    |   null   |    null     |
| online_status | BOOLEAN  |   -1   |    false    |     false      |   true    |   null   |    null     |
| rsu_model_id  | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|   area_code   | VARCHAR  |   64   |    false    |     false      |   false   |   null   |    null     |
|    address    | VARCHAR  |  255   |    false    |     false      |   true    |   null   |    null     |
|     desc      | VARCHAR  |  255   |    false    |     false      |   false   |   null   |    null     |
|    log_id     | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |

## 6. Table Name：`rsm`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|   ref_pos   |   JSON   |   -1   |    false    |     false      |   true    |   null   |    null     |

## 7. Table Name：`map_rsu`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|   map_id    | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|   rsu_id    | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|   status    | INTEGER  |   -1   |    false    |     false      |   true    |   null   |    null     |

## 8. Table Name：`city`

|  Field Name   |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :-----------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|      id       | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
|  create_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|  update_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| province_code | VARCHAR  |   64   |    false    |     false      |   false   |   null   |    null     |
|     code      | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|     name      | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |

## 9. Table Name：`rsm_participants`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|   rsm_id    | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|  ptc_type   | VARCHAR  |   10   |    false    |     false      |   true    |   null   |    null     |
|   ptc_id    | INTEGER  |   -1   |    false    |     false      |   true    |   null   |    null     |
|   source    | INTEGER  |   -1   |    false    |     false      |   true    |   null   |    null     |
|  sec_mark   | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|     pos     |   JSON   |   -1   |    false    |     false      |   true    |   null   |    null     |
|  accuracy   | VARCHAR  |  255   |    false    |     false      |   false   |   null   |    null     |
|    speed    | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|   heading   | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|    size     |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |

## 10. Table Name：`province`

|  Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :----------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|      id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| country_code | VARCHAR  |   64   |    false    |     false      |   false   |   null   |    null     |
|     code     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|     name     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |

## 11. Table Name：`rsi_event`

|    Field Name     |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|        id         | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
|    create_time    | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|    update_time    | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|      rsu_id       | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|     area_code     | VARCHAR  |   64   |    false    |     false      |   false   |   null   |    null     |
|      address      | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|     alert_id      | VARCHAR  |   64   |    false    |     false      |   false   |   null   |    null     |
|     duration      | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|   event_status    | BOOLEAN  |   -1   |    false    |     false      |   false   |   null   |    null     |
|     timestamp     | VARCHAR  |   64   |    false    |     false      |   false   |   null   |    null     |
|    event_class    | VARCHAR  |   15   |    false    |     false      |   false   |   null   |    null     |
|    event_type     | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|   event_source    | VARCHAR  |   14   |    false    |     false      |   false   |   null   |    null     |
| event_confidence  |  FLOAT   |   -1   |    false    |     false      |   false   |   null   |    null     |
|  event_position   |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |
|   event_radius    |  FLOAT   |   -1   |    false    |     false      |   false   |   null   |    null     |
| event_description | VARCHAR  |  255   |    false    |     false      |   false   |   null   |    null     |
|  event_priority   | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|  reference_paths  |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |

## 12. Table Name：`rsu_query`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| query_type  | INTEGER  |   -1   |    false    |     false      |   true    |   null   |    null     |
|  time_type  | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |

## 13. Table Name：`rsu_model`

|  Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :----------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|      id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|     name     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
| manufacturer | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|     desc     | VARCHAR  |  255   |    false    |     false      |   true    |   null   |    null     |

## 14. Table Name：`rsu_config`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|    name     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|     bsm     |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |
|     rsi     |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |
|     rsm     |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |
|     map     |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |
|    spat     |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |

## 15. Table Name：`user`

|   Field Name    |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :-------------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|       id        | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
|   create_time   | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|   update_time   | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|    username     | VARCHAR  |  255   |    false    |     false      |   true    |   null   |    null     |
| hashed_password | VARCHAR  |  4096  |    false    |     false      |   true    |   null   |    null     |
|    is_active    | BOOLEAN  |   -1   |    false    |     false      |   false   |   null   |    null     |

## 16. Table Name：`area`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|  city_code  | VARCHAR  |   64   |    false    |     false      |   false   |   null   |    null     |
|    code     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|    name     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |

## 17. Table Name：`rsu_query_result_data`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|  result_id  | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|    data     |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |

## 18. Table Name：`map`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|    name     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|   address   | VARCHAR  |  255   |    false    |     false      |   true    |   null   |    null     |
|  area_code  | VARCHAR  |   64   |    false    |     false      |   false   |   null   |    null     |
|    desc     | VARCHAR  |  255   |    false    |     false      |   true    |   null   |    null     |
|     lat     |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|     lng     |  FLOAT   |   -1   |    false    |     false      |   true    |   null   |    null     |
|    data     |   JSON   |   -1   |    false    |     false      |   false   |   null   |    null     |

## 19. Table Name：`rsu_query_result`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|  query_id   | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |
|   rsu_id    | INTEGER  |   -1   |    false    |     false      |   false   |   null   |    null     |

## 20. Table Name：`rsu_log`

|  Field Name   |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :-----------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|      id       | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
|  create_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|  update_time  | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|  upload_url   | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|    user_id    | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|   password    | VARCHAR  |  255   |    false    |     false      |   true    |   null   |    null     |
| transprotocal | VARCHAR  |   5    |    false    |     false      |   true    |   null   |    null     |

## 21. Table Name：`rsu_tmp`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|   rsu_id    | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|   rsu_esn   | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|  rsu_name   | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
| rsu_status  | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|   version   | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|  location   |   JSON   |   -1   |    false    |     false      |   true    |   null   |    null     |
|   config    |   JSON   |   -1   |    false    |     false      |   true    |   null   |    null     |

## 22. Table Name：`country`

| Field Name  |   Type   | Length | Primary Key | Auto Increment | Non Empty | Defaults | Explanation |
| :---------: | :------: | :----: | :---------: | :------------: | :-------: | :------: | :---------: |
|     id      | INTEGER  |   -1   |    true     |     false      |   true    |   null   |    null     |
| create_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
| update_time | DATETIME |   -1   |    false    |     false      |   true    |   null   |    null     |
|    code     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
|    name     | VARCHAR  |   64   |    false    |     false      |   true    |   null   |    null     |
