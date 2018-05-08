.class Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;


# instance fields
.field private final mExistingApps:Ljava/util/HashSet;

.field private final mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

.field private final mOutOps:Ljava/util/ArrayList;

.field private final mRequiredSize:I

.field private mStartItemId:I


# direct methods
.method constructor <init>(Ljava/util/HashSet;Lcom/android/launcher3/util/LongArrayMap;Ljava/util/ArrayList;II)V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingApps:Ljava/util/HashSet;

    .line 418
    iput-object p2, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

    .line 419
    iput-object p3, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mOutOps:Ljava/util/ArrayList;

    .line 420
    iput p5, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mRequiredSize:I

    .line 421
    iput p4, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mStartItemId:I

    .line 422
    return-void
.end method


# virtual methods
.method public final generateNewItemId()J
    .locals 2

    .line 426
    iget v0, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mStartItemId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mStartItemId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 7

    .line 431
    iget-object p1, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mRequiredSize:I

    const-wide/16 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 433
    return-wide v1

    .line 437
    :cond_0
    :try_start_0
    const-string p1, "intent"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    nop

    .line 441
    invoke-static {p1}, Lcom/android/launcher3/provider/ImportDataTask;->getPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingApps:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 446
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingApps:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 449
    nop

    .line 450
    move-wide v3, v1

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 451
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mExistingItems:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v3, v4, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 454
    const-string p1, "screen"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 455
    iget-object p1, p0, Lcom/android/launcher3/provider/ImportDataTask$HotseatParserCallback;->mOutOps:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    return-wide v1

    .line 444
    :cond_3
    :goto_1
    return-wide v1

    .line 438
    :catch_0
    move-exception p1

    .line 439
    return-wide v1
.end method
