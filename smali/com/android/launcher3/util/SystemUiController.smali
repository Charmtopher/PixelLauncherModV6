.class public Lcom/android/launcher3/util/SystemUiController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mStates:[I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    .line 45
    return-void
.end method


# virtual methods
.method public final updateUiState(II)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    aput p2, v0, p1

    .line 58
    iget-object p1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    .line 60
    nop

    .line 61
    iget-object p2, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v1, v0, :cond_5

    aget v3, p2, v1

    .line 62
    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v4, :cond_2

    .line 63
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    .line 64
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 65
    :cond_1
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_2

    .line 66
    and-int/lit8 v2, v2, -0x11

    .line 70
    :cond_2
    :goto_1
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_3

    .line 71
    or-int/lit16 v2, v2, 0x2000

    goto :goto_2

    .line 72
    :cond_3
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    .line 73
    and-int/lit16 v2, v2, -0x2001

    .line 61
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_5
    if-eq v2, p1, :cond_6

    .line 77
    iget-object p1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 79
    :cond_6
    return-void
.end method

.method public final updateUiState(IZ)V
    .locals 0

    .line 48
    if-eqz p2, :cond_0

    .line 49
    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    .line 48
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 50
    return-void
.end method
