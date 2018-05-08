.class public Lcom/android/launcher3/util/ContentWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

.field public final mContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/Bitmap;

.field public mUser:Landroid/os/UserHandle;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    .line 54
    iput-object p2, p0, Lcom/android/launcher3/util/ContentWriter;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/launcher3/util/ContentWriter;->mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

    .line 46
    return-void
.end method


# virtual methods
.method public final commit()I
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/ContentWriter;->mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

    iget-object v1, v1, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/util/ContentWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/ContentWriter;->mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

    iget-object v3, v3, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mWhere:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher3/util/ContentWriter;->mCommitParams:Lcom/android/launcher3/util/ContentWriter$CommitParams;

    iget-object v4, v4, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getValues(Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/util/ContentWriter;->mUser:Landroid/os/UserHandle;

    .line 99
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    const-string v0, "icon"

    iget-object v1, p0, Lcom/android/launcher3/util/ContentWriter;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 101
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/ContentWriter;->mIcon:Landroid/graphics/Bitmap;

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method public final put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object p0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-object p0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    return-object p0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    return-object p0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/util/ContentWriter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object p0
.end method
