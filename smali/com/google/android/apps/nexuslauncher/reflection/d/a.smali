.class public Lcom/google/android/apps/nexuslauncher/reflection/d/a;
.super Lcom/android/launcher3/util/NoLocaleSQLiteHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 32
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/util/NoLocaleSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public final createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 61
    const-string v0, "DROP TABLE IF EXISTS reflection_event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    return-void
.end method

.method public declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    monitor-enter p0

    .line 40
    :try_start_0
    const-string v0, "CREATE TABLE reflection_event (_id INTEGER PRIMARY KEY AUTOINCREMENT,timestamp INTEGER,client TEXT,type TEXT,id TEXT,latLong BLOB,semanticPlace BLOB,proto BLOB,eventSource TEXT,public_place BLOB,generated_from TEXT)"

    .line 54
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 135
    const-string v0, "Reflection.EvtDbHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Database version downgrade from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Wiping database."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 71
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    .line 122
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 77
    :try_start_0
    const-string p2, "ALTER TABLE reflection_event ADD COLUMN eventSource TEXT DEFAULT NULL"

    .line 79
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 85
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    nop

    .line 90
    :pswitch_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 93
    :try_start_1
    const-string p2, "ALTER TABLE reflection_event ADD COLUMN public_place BLOB DEFAULT NULL"

    .line 95
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 102
    nop

    .line 106
    :pswitch_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 109
    :try_start_2
    const-string p2, "ALTER TABLE reflection_event ADD COLUMN generated_from TEXT DEFAULT NULL"

    .line 111
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception p2

    goto :goto_0

    .line 113
    :catch_0
    move-exception p2

    .line 114
    :try_start_3
    const-string p3, "Reflection.EvtDbHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding generated from column failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2

    .line 101
    :catchall_1
    move-exception p2

    goto :goto_1

    .line 97
    :catch_1
    move-exception p2

    .line 98
    :try_start_4
    const-string p3, "Reflection.EvtDbHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding public place column failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2

    .line 85
    :catchall_2
    move-exception p2

    goto :goto_2

    .line 81
    :catch_2
    move-exception p2

    .line 82
    :try_start_5
    const-string p3, "Reflection.EvtDbHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding event source column failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 85
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2

    .line 127
    :goto_3
    const-string p2, "Reflection.EvtDbHelper"

    const-string p3, "Destroying all old data."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
