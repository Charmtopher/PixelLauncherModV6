.class public Lcom/android/launcher3/model/DbDowngradeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mStatements:Landroid/util/SparseArray;

.field public final version:I


# direct methods
.method public static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 71
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/DbDowngradeHelper;->mStatements:Landroid/util/SparseArray;

    .line 52
    iput p1, p0, Lcom/android/launcher3/model/DbDowngradeHelper;->version:I

    .line 53
    return-void
.end method

.method public static parse(Ljava/io/File;)Lcom/android/launcher3/model/DbDowngradeHelper;
    .locals 6

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance p0, Lcom/android/launcher3/model/DbDowngradeHelper;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/DbDowngradeHelper;-><init>(I)V

    .line 77
    iget v1, p0, Lcom/android/launcher3/model/DbDowngradeHelper;->version:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_2

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downgrade_to_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downgrade_to_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 81
    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 82
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/model/DbDowngradeHelper;->mStatements:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 87
    :cond_2
    return-object p0
.end method
