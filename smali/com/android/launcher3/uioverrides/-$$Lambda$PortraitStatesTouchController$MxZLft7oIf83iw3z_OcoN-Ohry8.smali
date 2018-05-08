.class public final synthetic Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$MxZLft7oIf83iw3z_OcoN-Ohry8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private final synthetic f$0:F

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$MxZLft7oIf83iw3z_OcoN-Ohry8;->f$0:F

    iput p2, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$MxZLft7oIf83iw3z_OcoN-Ohry8;->f$1:F

    iput p3, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$MxZLft7oIf83iw3z_OcoN-Ohry8;->f$2:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    iget v0, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$MxZLft7oIf83iw3z_OcoN-Ohry8;->f$0:F

    iget v1, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$MxZLft7oIf83iw3z_OcoN-Ohry8;->f$1:F

    iget v2, p0, Lcom/android/launcher3/uioverrides/-$$Lambda$PortraitStatesTouchController$MxZLft7oIf83iw3z_OcoN-Ohry8;->f$2:F

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/uioverrides/PortraitStatesTouchController;->lambda$handleFirstSwipeToOverview$2(FFFF)F

    move-result p1

    return p1
.end method
