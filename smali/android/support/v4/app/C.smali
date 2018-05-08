.class Landroid/support/v4/app/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fh:Landroid/support/v4/app/B;


# direct methods
.method constructor <init>(Landroid/support/v4/app/B;)V
    .locals 0

    .line 4031
    iput-object p1, p0, Landroid/support/v4/app/C;->fh:Landroid/support/v4/app/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4034
    iget-object v0, p0, Landroid/support/v4/app/C;->fh:Landroid/support/v4/app/B;

    iget-object v0, v0, Landroid/support/v4/app/B;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4035
    return-void
.end method
