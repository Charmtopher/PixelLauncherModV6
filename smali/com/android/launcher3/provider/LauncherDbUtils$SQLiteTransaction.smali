.class public Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 129
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 130
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 139
    return-void
.end method
