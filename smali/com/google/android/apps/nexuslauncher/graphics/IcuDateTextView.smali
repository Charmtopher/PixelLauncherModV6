.class public Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;
.super Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;
.source "SourceFile"


# instance fields
.field private mRegistered:Z

.field private final zu:I

.field private final zv:I

.field private zw:Landroid/icu/text/DateFormat;

.field private final zx:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p2, Lcom/google/android/apps/nexuslauncher/graphics/a;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/graphics/a;-><init>(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zx:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 46
    const v0, 0x7f0b00c5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zu:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 48
    const p2, 0x7f0b00c6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zv:I

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->s(Z)V

    return-void
.end method

.method private s(Z)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zw:Landroid/icu/text/DateFormat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 78
    :cond_0
    nop

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 78
    invoke-static {p1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zw:Landroid/icu/text/DateFormat;

    .line 81
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zw:Landroid/icu/text/DateFormat;

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zw:Landroid/icu/text/DateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zu:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zv:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onVisibilityAggregated(Z)V
    .locals 3

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->onVisibilityAggregated(Z)V

    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->mRegistered:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 55
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->mRegistered:Z

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->s(Z)V

    return-void

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->mRegistered:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->zx:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->mRegistered:Z

    .line 62
    :cond_1
    return-void
.end method
