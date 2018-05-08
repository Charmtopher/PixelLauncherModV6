.class public abstract Lcom/android/launcher3/graphics/ViewScrim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static PROGRESS:Landroid/util/Property;


# instance fields
.field protected mProgress:F

.field protected final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/android/launcher3/graphics/ViewScrim$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "progress"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/graphics/ViewScrim$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/graphics/ViewScrim;->PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/graphics/ViewScrim;->mProgress:F

    .line 48
    iput-object p1, p0, Lcom/android/launcher3/graphics/ViewScrim;->mView:Landroid/view/View;

    .line 49
    return-void
.end method

.method public static get(Landroid/view/View;)Lcom/android/launcher3/graphics/ViewScrim;
    .locals 1

    .line 75
    const v0, 0x7f0e0005

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/graphics/ViewScrim;

    return-object p0
.end method


# virtual methods
.method public final attach()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/graphics/ViewScrim;->mView:Landroid/view/View;

    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;II)V
.end method

.method public final invalidate()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/graphics/ViewScrim;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 72
    :cond_0
    return-void
.end method

.method protected onProgressChanged()V
    .locals 0

    .line 65
    return-void
.end method

.method public final setProgress(F)V
    .locals 1

    .line 56
    iget v0, p0, Lcom/android/launcher3/graphics/ViewScrim;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 57
    iput p1, p0, Lcom/android/launcher3/graphics/ViewScrim;->mProgress:F

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ViewScrim;->onProgressChanged()V

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ViewScrim;->invalidate()V

    .line 61
    :cond_0
    return-void
.end method
