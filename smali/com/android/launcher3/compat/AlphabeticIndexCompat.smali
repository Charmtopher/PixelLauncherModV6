.class public Lcom/android/launcher3/compat/AlphabeticIndexCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MID_DOT:Ljava/lang/String; = "\u2219"

.field private static final TAG:Ljava/lang/String; = "AlphabeticIndexCompat"


# instance fields
.field private final mBaseIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

.field private final mDefaultMiscLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    nop

    .line 26
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v1, :cond_0

    .line 27
    new-instance v1, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;

    invoke-direct {v1, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :cond_0
    move-object v1, v0

    :goto_0
    goto :goto_1

    .line 29
    :catch_0
    move-exception v1

    .line 30
    const-string v2, "AlphabeticIndexCompat"

    const-string v3, "Unable to load the system index"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_1

    .line 34
    :try_start_1
    new-instance v2, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexV16;

    invoke-direct {v2, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexV16;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    nop

    .line 40
    move-object v1, v2

    goto :goto_2

    .line 35
    :catch_1
    move-exception v2

    .line 36
    const-string v3, "AlphabeticIndexCompat"

    const-string v4, "Unable to load the system index"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    new-instance v1, Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    invoke-direct {v1, v0}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;-><init>(Lcom/android/launcher3/compat/AlphabeticIndexCompat$1;)V

    :cond_2
    iput-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 43
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    const-string p1, "\u4ed6"

    iput-object p1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    return-void

    .line 49
    :cond_3
    const-string p1, "\u2219"

    iput-object p1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 57
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    iget-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat$BaseIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 64
    const-string p1, "#"

    return-object p1

    .line 66
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    return-object p1

    .line 73
    :cond_1
    const-string p1, "\u2219"

    return-object p1

    .line 77
    :cond_2
    return-object v0
.end method
