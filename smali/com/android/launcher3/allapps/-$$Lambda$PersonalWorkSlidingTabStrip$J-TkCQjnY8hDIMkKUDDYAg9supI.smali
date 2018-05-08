.class public final synthetic Lcom/android/launcher3/allapps/-$$Lambda$PersonalWorkSlidingTabStrip$J-TkCQjnY8hDIMkKUDDYAg9supI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/-$$Lambda$PersonalWorkSlidingTabStrip$J-TkCQjnY8hDIMkKUDDYAg9supI;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/-$$Lambda$PersonalWorkSlidingTabStrip$J-TkCQjnY8hDIMkKUDDYAg9supI;->f$0:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->lambda$highlightWorkTab$0(Landroid/view/View;)V

    return-void
.end method
