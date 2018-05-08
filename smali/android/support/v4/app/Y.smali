.class Landroid/support/v4/app/Y;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field final synthetic fZ:Landroid/graphics/Rect;

.field final synthetic gl:Landroid/support/v4/app/X;


# direct methods
.method constructor <init>(Landroid/support/v4/app/X;Landroid/graphics/Rect;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroid/support/v4/app/Y;->gl:Landroid/support/v4/app/X;

    iput-object p2, p0, Landroid/support/v4/app/Y;->fZ:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    .line 84
    iget-object p1, p0, Landroid/support/v4/app/Y;->fZ:Landroid/graphics/Rect;

    return-object p1
.end method
