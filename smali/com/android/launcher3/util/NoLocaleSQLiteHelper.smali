.class public abstract Lcom/android/launcher3/util/NoLocaleSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/NoLocaleSQLiteHelper$NoLocalContext;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/NoLocaleSQLiteHelper$NoLocalContext;-><init>(Landroid/content/Context;)V

    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz p1, :cond_1

    .line 40
    new-instance p1, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/NoLocaleSQLiteHelper;->setOpenParams(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    .line 42
    :cond_1
    return-void
.end method
